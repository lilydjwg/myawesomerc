-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
awful.rules = require("awful.rules")
require("awful.autofocus")
-- Widget and layout library
local wibox = require("wibox")
-- Theme handling library
local beautiful = require("beautiful")
-- Notification library
local naughty = require("naughty")
local menubar = require("menubar")
-- for fcitx-chttrans
table.insert(naughty.config.icon_dirs, '/usr/share/icons/hicolor/48x48/status/')

local empathy = require("empathy")
local myutil = require("myutil")
local fixwidthtextbox = require("fixwidthtextbox")
local menu = require("menu")

os.setlocale("")
-- A debugging func
n = function(n) naughty.notify{title="消息", text=tostring(n)} end
last_bat_warning = 0

-- {{{ Error handling
-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
if awesome.startup_errors then
    naughty.notify({ preset = naughty.config.presets.critical,
                     title = "Oops, there were errors during startup!",
                     text = awesome.startup_errors })
end

-- Handle runtime errors after startup
do
    local in_error = false
    awesome.connect_signal("debug::error", function (err)
        -- Make sure we don't go into an endless error loop
        if in_error then return end
        in_error = true

        naughty.notify({ preset = naughty.config.presets.critical,
                         title = "Oops, an error happened!",
                         text = err })
        in_error = false
    end)
end
-- }}}

-- {{{ Variable definitions
-- Themes define colours, icons, and wallpapers
beautiful.init(awful.util.getdir("config") .. "/theme.lua")

-- This is used later as the default terminal and editor to run.
terminal = "xfce4-terminal"
editor = "gvim"
editor_cmd = editor

-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
modkey = "Mod4"

-- Table of layouts to cover with awful.layout.inc, order matters.
local layouts =
{
    awful.layout.suit.floating,
    awful.layout.suit.tile,
    awful.layout.suit.tile.left,
    awful.layout.suit.tile.bottom,
    awful.layout.suit.tile.top,
    awful.layout.suit.fair,
    awful.layout.suit.fair.horizontal,
    -- awful.layout.suit.spiral,
    -- awful.layout.suit.spiral.dwindle,
    awful.layout.suit.max,
    awful.layout.suit.max.fullscreen,
    awful.layout.suit.magnifier,
}
-- }}}

-- {{{ Wallpaper
if beautiful.wallpaper then
    for s = 1, screen.count() do
        gears.wallpaper.maximized(beautiful.wallpaper, s, true)
    end
end
-- }}}

-- {{{ Tags
-- Define a tag table which hold all screen tags.
tags_name = { "1", "2", "3", "4", "5文件", "6聊天", "7GVIM", "8", "9火狐", '0' }
tags_layout = {
    awful.layout.suit.tile,
    awful.layout.suit.tile,
    awful.layout.suit.tile,
    awful.layout.suit.tile,
    awful.layout.suit.tile,
    empathy,
    awful.layout.suit.tile,
    awful.layout.suit.tile,
    awful.layout.suit.tile,
    awful.layout.suit.floating,
}
tags = {}
revtags = {}
for s = 1, screen.count() do
    -- Each screen has its own tag table.
    tags[s] = awful.tag(tags_name, s, tags_layout)
    revtags[s] = {}
    for i, t in ipairs(tags[s]) do
        revtags[s][t] = i
    end
end
-- }}}

-- {{{ Menu
-- Create a laucher widget and a main menu
local myawesomemenu = {
   { "编辑配置 (&E)", editor_cmd .. " " .. awesome.conffile },
   { "重新加载 (&R)", awesome.restart, '/usr/share/icons/gnome/16x16/actions/stock_refresh.png' },
   { "注销 (&L)", awesome.quit },
}

local mymenu = {
   { "&Nautilus", "nautilus --no-desktop /home/lilydjwg/tmpfs", '/usr/share/icons/gnome/32x32/apps/system-file-manager.png' },
   { "&Wireshark", "wireshark", '/usr/share/icons/hicolor/32x32/apps/wireshark.png'},
   { "&VirtualBox", "VirtualBox", '/usr/share/icons/hicolor/32x32/mimetypes/virtualbox.png' },
   { "文档查看器 (&E)", "evince", '/usr/share/icons/hicolor/16x16/apps/evince.png' },
   { "屏幕键盘", "matchbox-keyboard", '/usr/share/pixmaps/matchbox-keyboard.png' },
}

mymainmenu = awful.menu({ items = { { "Awesome", myawesomemenu, beautiful.awesome_icon },
          { "终端 (&T)", terminal, '/usr/share/icons/gnome/32x32/apps/utilities-terminal.png' },
          { "G&VIM", "gvim", '/usr/share/pixmaps/gvim.png' },
          { "火狐 (&F)", "firefox", '/usr/share/icons/hicolor/32x32/apps/firefox.png' },
          { "常用 (&U)", mymenu },
          { "应用程序 (&A)", xdgmenu(terminal) },
          { "挂起 (&S)", "systemctl suspend" },
          { "关机 (&H)", "zenity --question --title '关机' --text '你确定关机吗？' --default-no && systemctl poweroff", '/usr/share/icons/gnome/16x16/actions/gtk-quit.png' },
          }
})

mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon,
                                     menu = mymainmenu })

-- Menubar configuration
menubar.utils.terminal = terminal -- Set the terminal for applications that require it
-- }}}

-- {{{ Wibox
-- Create a textclock widget
mytextclock = awful.widget.textclock(" %Y年%m月%d日 %H:%M:%S %A ", 1)

-- {{{ my widgets
-- {{{ Network speed indicator
function update_netstat()
    local interval = netwidget_clock.timeout
    local netif, text
    local f = io.open('/proc/net/route')
    for line in f:lines() do
        netif = line:match('^(%w+)%s+00000000%s')
        if netif then
            break
        end
    end
    f:close()

    if netif then
        local down, up
        f = io.open('/proc/net/dev')
        for line in f:lines() do
            -- Match wmaster0 as well as rt0 (multiple leading spaces)
            local name, recv, send = string.match(line, "^%s*(%w+):%s+(%d+)%s+%d+%s+%d+%s+%d+%s+%d+%s+%d+%s+%d+%s+%d+%s+(%d+)")
            if name == netif then
                if netdata[name] == nil then
                    -- Default values on the first run
                    netdata[name] = {}
                    down, up = 0, 0
                else
                    down = (recv - netdata[name][1]) / interval
                    up   = (send - netdata[name][2]) / interval
                end
                netdata[name][1] = recv
                netdata[name][2] = send
                break
            end
        end
        f:close()
        down = string.format('%.1f', down / 1024)
        up = string.format('%.1f', up / 1024)
        text = '↓<span color="#5798d9">'.. down ..'</span> ↑<span color="#c2ba62">'.. up ..'</span>'
    else
        netdata = {} -- clear as the interface may have been reset
        text = '(No network)'
    end
    netwidget:set_markup(text)
end
netdata = {}
netwidget = fixwidthtextbox('(net)')
netwidget.width = 85
netwidget:set_align('center')
netwidget_clock = timer({ timeout = 2 })
netwidget_clock:connect_signal("timeout", update_netstat)
netwidget_clock:start()
update_netstat()
-- }}}

-- {{{ memory usage indicator
function update_memwidget()
    local f = io.open('/proc/meminfo')
    local total = f:read('*l')
    local free = f:read('*l')
    local buffered = f:read('*l')
    local cached = f:read('*l')
    f:close()
    total = total:match('%d+')
    free = free:match('%d+')
    buffered = buffered:match('%d+')
    cached = cached:match('%d+')
    free = free + buffered + cached
    local percent = 100 - math.floor(free / total * 100 + 0.5)
    memwidget:set_markup('Mem <span color="#90ee90">'.. percent ..'%</span>')
end
memwidget = fixwidthtextbox('Mem ??')
memwidget.width = 55
update_memwidget()
mem_clock = timer({ timeout = 5 })
mem_clock:connect_signal("timeout", update_memwidget)
mem_clock:start()
-- }}}

--{{{ battery indicator, using smapi
local battery_state = {
    unknown     = '<span color="yellow">? ',
    idle        = '<span color="#0000ff">↯',
    charging    = '<span color="green">+ ',
    discharging = '<span color="#1e90ff">– ',
}
function update_batwidget()
    local bat_dir = '/sys/devices/platform/smapi/BAT0/'
    local f = io.open(bat_dir .. 'state')
    if not f then
        batwidget:set_markup('<span color="red">ERR</span>')
        return
    end

    local state = f:read('*l')
    f:close()
    local state_text = battery_state[state] or battery_state.unknown

    f = io.open(bat_dir .. 'remaining_percent')
    if not f then
        batwidget:set_markup('<span color="red">ERR</span>')
        return
    end
    local percent = tonumber(f:read('*l'))
    f:close()
    if percent <= 35 then
        if state == 'discharging' then
            local t = os.time()
            if t - last_bat_warning > 60 * 5 then
                naughty.notify{
                    preset = naughty.config.presets.critical,
                    title = "电量警报",
                    text = '电池电量只剩下 ' .. percent .. '% 了！',
                }
                last_bat_warning = t
            end
        end
        percent = '<span color="red">' .. percent .. '</span>'
    end
    batwidget:set_markup(state_text .. percent .. '%</span>')
end
batwidget = fixwidthtextbox('↯??%')
batwidget.width = 45
update_batwidget()
bat_clock = timer({ timeout = 5 })
bat_clock:connect_signal("timeout", update_batwidget)
bat_clock:start()
-- }}}

-- {{{ Volume Controller
function volumectl (mode, widget)
    if mode == "update" then
        local f = io.popen("pamixer --get-volume")
        local volume = f:read("*all")
        f:close()
        if not tonumber(volume) then
            widget:set_markup("<span color='red'>ERR</span>")
            do return end
        end
        volume = string.format("% 3d", volume)

        f = io.popen("pamixer --get-mute")
        local muted = f:read("*all")
        f:close()
        if muted == "false" then
            volume = '♫' .. volume .. "%"
        else
            volume = '♫' .. volume .. "<span color='red'>M</span>"
        end
        widget:set_markup(volume)
    elseif mode == "up" then
        local f = io.popen("pamixer --allow-boost --increase 5")
        f:read("*all")
        f:close()
        volumectl("update", widget)
    elseif mode == "down" then
        local f = io.popen("pamixer --allow-boost --decrease 5")
        f:read("*all")
        f:close()
        volumectl("update", widget)
    else
        local f = io.popen("pamixer --toggle-mute")
        f:read("*all")
        f:close()
        volumectl("update", widget)
    end
end
volume_clock = timer({ timeout = 10 })
volume_clock:connect_signal("timeout", function () volumectl("update", volumewidget) end)
volume_clock:start()

volumewidget = fixwidthtextbox('(volume)')
volumewidget.width = 48
volumewidget:set_align('right')
volumewidget:buttons(awful.util.table.join(
    awful.button({ }, 4, function () volumectl("up", volumewidget) end),
    awful.button({ }, 5, function () volumectl("down", volumewidget) end),
    awful.button({ }, 3, function () awful.util.spawn("pavucontrol") end),
    awful.button({ }, 1, function () volumectl("mute", volumewidget) end)
))
volumectl("update", volumewidget)
--}}}
-- }}}

-- {{{ Create a wibox for each screen and add it
mywibox = {}
mypromptbox = {}
mylayoutbox = {}
mytaglist = {}
mytaglist.buttons = awful.util.table.join(
                    awful.button({ }, 1, awful.tag.viewonly),
                    awful.button({ modkey }, 1, awful.client.movetotag),
                    awful.button({ }, 3, awful.tag.viewtoggle),
                    awful.button({ modkey }, 3, awful.client.toggletag),
                    awful.button({ }, 4, function(t) awful.tag.viewnext(awful.tag.getscreen(t)) end),
                    awful.button({ }, 5, function(t) awful.tag.viewprev(awful.tag.getscreen(t)) end)
                    )
mytasklist = {}
mytasklist.buttons = awful.util.table.join(
                     awful.button({ }, 1, function (c)
                                              if c == client.focus and not c.minimized then
                                                  c.minimized = true
                                              else
                                                  -- Without this, the following
                                                  -- :isvisible() makes no sense
                                                  c.minimized = false
                                                  if not c:isvisible() then
                                                      awful.tag.viewonly(c:tags()[1])
                                                  end
                                                  -- This will also un-minimize
                                                  -- the client, if needed
                                                  client.focus = c
                                                  c:raise()
                                              end
                                          end),
                     awful.button({ }, 2, function (c)
                                              c:kill()
                                          end),
                     awful.button({ }, 3, function ()
                                              if instance then
                                                  instance:hide()
                                                  instance = nil
                                              else
                                                  instance = awful.menu.clients({ width=250 })
                                              end
                                          end),
                     awful.button({ }, 4, function ()
                                              awful.client.focus.byidx(1)
                                              if client.focus then client.focus:raise() end
                                          end),
                     awful.button({ }, 5, function ()
                                              awful.client.focus.byidx(-1)
                                              if client.focus then client.focus:raise() end
                                          end))

for s = 1, screen.count() do
    -- Create a promptbox for each screen
    mypromptbox[s] = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    mylayoutbox[s] = awful.widget.layoutbox(s)
    mylayoutbox[s]:buttons(awful.util.table.join(
                           awful.button({ }, 1, function () awful.layout.inc(layouts, 1) end),
                           awful.button({ }, 3, function () awful.layout.inc(layouts, -1) end),
                           awful.button({ }, 4, function () awful.layout.inc(layouts, 1) end),
                           awful.button({ }, 5, function () awful.layout.inc(layouts, -1) end)))
    -- Create a taglist widget
    mytaglist[s] = awful.widget.taglist(s, awful.widget.taglist.filter.all, mytaglist.buttons)

    -- Create a tasklist widget
    mytasklist[s] = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, mytasklist.buttons)

    -- Create the wibox
    mywibox[s] = awful.wibox({ position = "top", screen = s, height = 18 })

    -- Widgets that are aligned to the left
    local left_layout = wibox.layout.fixed.horizontal()
    left_layout:add(mylauncher)
    left_layout:add(mytaglist[s])
    left_layout:add(mypromptbox[s])

    -- Widgets that are aligned to the right
    local right_layout = wibox.layout.fixed.horizontal()
    right_layout:add(memwidget)
    right_layout:add(batwidget)
    right_layout:add(netwidget)
    right_layout:add(volumewidget)
    if s == 1 then right_layout:add(wibox.widget.systray()) end
    right_layout:add(mytextclock)
    right_layout:add(mylayoutbox[s])

    -- Now bring it all together (with the tasklist in the middle)
    local layout = wibox.layout.align.horizontal()
    layout:set_left(left_layout)
    layout:set_middle(mytasklist[s])
    layout:set_right(right_layout)

    mywibox[s]:set_widget(layout)
end -- }}}
-- }}}

-- {{{ Mouse bindings
root.buttons(awful.util.table.join(
    awful.button({ }, 3, function () mymainmenu:toggle() end),
    awful.button({ }, 4, awful.tag.viewprev),
    awful.button({ }, 5, awful.tag.viewnext)
))
-- }}}

-- {{{ Key bindings
-- {{{ Functions
local movebyrelidx = function (n, view) -- {{{
    -- view: 要转到那个 tag 吗？
    local screen = mouse.screen
    local which = (revtags[screen][awful.tag.selected()]+n) % #tags[screen]
    if which == 0 then which = #tags[screen] end
    if client.focus and tags[client.focus.screen][which] then
        awful.client.movetotag(tags[client.focus.screen][which])
    end
    if view and tags[screen][which] then
        awful.tag.viewonly(tags[screen][which])
    end
end -- }}}

local keynumber_reg = function (i, which) -- {{{
    if not which then
        which = i
    end
    globalkeys = awful.util.table.join(globalkeys,
        awful.key({ modkey }, i,
            function ()
                local screen = mouse.screen
                if tags[screen][which] then
                    awful.tag.viewonly(tags[screen][which])
                end
            end),
        awful.key({ modkey, "Control" }, i,
            function ()
                local screen = mouse.screen
                if tags[screen][which] then
                    awful.tag.viewtoggle(tags[screen][which])
                end
            end),
        awful.key({ modkey, "Shift"   }, i,
            -- 移动窗口后跳转过去
            function ()
                if client.focus and tags[client.focus.screen][which] then
                    awful.client.movetotag(tags[client.focus.screen][which])
                end
                local screen = mouse.screen
                if tags[screen][which] then
                    awful.tag.viewonly(tags[screen][which])
                end
            end),
        awful.key({ modkey, "Mod1"   }, i,
            -- 只移动窗口，不跳转过去
            function ()
                if client.focus and tags[client.focus.screen][which] then
                    awful.client.movetotag(tags[client.focus.screen][which])
                end
            end),
        awful.key({ modkey, "Control", "Shift" }, i,
            function ()
                if client.focus and tags[client.focus.screen][which] then
                    awful.client.toggletag(tags[client.focus.screen][which])
                end
            end))
end -- }}}

-- {{{ bind_alt_switch_tab_keys
alt_switch_keys = awful.util.table.join(
    -- it's easier for a vimer to manage this than figuring out a nice way to loop and concat
    awful.key({'Mod1'}, 1, function(c) awful.util.spawn('xdotool key --window ' .. c.window .. ' ctrl+1') end),
    awful.key({'Mod1'}, 2, function(c) awful.util.spawn('xdotool key --window ' .. c.window .. ' ctrl+2') end),
    awful.key({'Mod1'}, 3, function(c) awful.util.spawn('xdotool key --window ' .. c.window .. ' ctrl+3') end),
    awful.key({'Mod1'}, 4, function(c) awful.util.spawn('xdotool key --window ' .. c.window .. ' ctrl+4') end),
    awful.key({'Mod1'}, 5, function(c) awful.util.spawn('xdotool key --window ' .. c.window .. ' ctrl+5') end),
    awful.key({'Mod1'}, 6, function(c) awful.util.spawn('xdotool key --window ' .. c.window .. ' ctrl+6') end),
    awful.key({'Mod1'}, 7, function(c) awful.util.spawn('xdotool key --window ' .. c.window .. ' ctrl+7') end),
    awful.key({'Mod1'}, 8, function(c) awful.util.spawn('xdotool key --window ' .. c.window .. ' ctrl+8') end),
    awful.key({'Mod1'}, 9, function(c) awful.util.spawn('xdotool key --window ' .. c.window .. ' ctrl+9') end)
)
function bind_alt_switch_tab_keys(client)
    client:keys(awful.util.table.join(client:keys(), alt_switch_keys))
end -- }}}
-- }}}

-- {{{ globalkeys
globalkeys = awful.util.table.join(
    awful.key({ modkey,           }, "Left",   awful.tag.viewprev       ),
    awful.key({ modkey,           }, "Right",  awful.tag.viewnext       ),
    awful.key({ modkey,           }, "Escape", awful.tag.history.restore),

    awful.key({ modkey,           }, "j",
        function ()
            awful.client.focus.byidx( 1)
            if client.focus then client.focus:raise() end
        end),
    awful.key({ modkey,           }, "k",
        function ()
            awful.client.focus.byidx(-1)
            if client.focus then client.focus:raise() end
        end),
    awful.key({ modkey,           }, "w", function () mymainmenu:show() end),

    -- Layout manipulation
    awful.key({ modkey, "Shift"   }, "j", function () awful.client.swap.byidx(  1)    end),
    awful.key({ modkey, "Shift"   }, "k", function () awful.client.swap.byidx( -1)    end),
    awful.key({ modkey, "Control" }, "j", function () awful.screen.focus_relative( 1) end),
    awful.key({ modkey, "Control" }, "k", function () awful.screen.focus_relative(-1) end),
    awful.key({ modkey,           }, "u", awful.client.urgent.jumpto),
    awful.key({ modkey,           }, "Tab",
        function ()
            awful.client.focus.history.previous()
            if client.focus then
                client.focus:raise()
            end
        end),

    -- Standard program
    awful.key({ modkey,           }, "Return",
        function ()
            -- Go and find a terminal for me
            myutil.run_or_raise("xfce4-terminal --role=TempTerm --geometry=80x24+343+180", { role = "TempTerm" })
        end),
    awful.key({ modkey, "Control" }, "r", awesome.restart),
    awful.key({ modkey, "Control" }, "q", awesome.quit),

    awful.key({ modkey,           }, "l",     function () awful.tag.incmwfact( 0.05)    end),
    awful.key({ modkey,           }, "h",     function () awful.tag.incmwfact(-0.05)    end),
    awful.key({ modkey, "Shift"   }, "h",     function () awful.tag.incnmaster( 1)      end),
    awful.key({ modkey, "Shift"   }, "l",     function () awful.tag.incnmaster(-1)      end),
    awful.key({ modkey, "Control" }, "h",     function () awful.tag.incncol( 1)         end),
    awful.key({ modkey, "Control" }, "l",     function () awful.tag.incncol(-1)         end),
    awful.key({ modkey,           }, "space", function () awful.layout.inc(layouts,  1) end),
    awful.key({ modkey, "Shift"   }, "space", function () awful.layout.inc(layouts, -1) end),
    awful.key({ modkey, "Shift"   }, "s",
        function ()
            -- because they may be not focusable
            local c = mouse.object_under_pointer()
            if c then
                c.sticky = not c.sticky
            end
        end),

    -- Prompt
    awful.key({ modkey            }, "r",     function () mypromptbox[mouse.screen]:run() end),
    awful.key({ "Mod1"            }, "F2",    function () mypromptbox[mouse.screen]:run() end),

    awful.key({ modkey, "Shift"   }, "x",
              function ()
                  awful.prompt.run({ prompt = "Run Lua code: " },
                  mypromptbox[mouse.screen].widget,
                  awful.util.eval, nil,
                  awful.util.getdir("cache") .. "/history_eval")
              end),
    -- Menubar
    awful.key({ modkey, "Mod1"    }, "p", function() menubar.show() end),

    -- Switching tags
    awful.key({ modkey,           }, "p",    awful.tag.viewprev ),
    awful.key({ modkey,           }, "n",    awful.tag.viewnext ),
    awful.key({ modkey, "Shift"   }, "p",
        function ()
            movebyrelidx(-1, true)
        end),
    awful.key({ modkey, "Shift"   }, "n",
        function ()
            movebyrelidx(1, true)
        end),

    -- Screenshot
    awful.key({                   }, "Print",
        function ()
            awful.util.spawn("zsh -c 'cd ~/tmpfs\nscrot\n'")
            os.execute("sleep .5")
            naughty.notify({title="截图", text="全屏截图已保存。"})
        end),

    -- Alt-Tab
    awful.key({ "Mod1",          }, "Tab",
        function ()
            awful.client.focus.byidx( 1)
            if client.focus then client.focus:raise() end
        end),
    awful.key({ "Mod1", "Shift"  }, "Tab",
        function ()
            awful.client.focus.byidx(-1)
            if client.focus then client.focus:raise() end
        end),

    -- Unminimize clients
    awful.key({ modkey, "Control" }, "m",
        function ()
            local allclients = client.get(mouse.screen)
            for _, c in ipairs(allclients) do
                if c.minimized and c:tags()[mouse.screen] == awful.tag.selected(mouse.screen) then
                    c.minimized = false
                    client.focus = c
                    c:raise()
                    return
                end
            end
        end),

    -- My programs
    awful.key({ modkey,           }, "g", function () awful.util.spawn("gvim") end),
    awful.key({ "Control", "Mod1", "Shift" }, "x", function () awful.util.spawn("xkill") end),
    awful.key({ "Control", "Mod1" }, "l", function () awful.util.spawn("leave") end),
    awful.key({ modkey,           }, "x", function () awful.util.spawn("openmsg.py", false) end),
    awful.key({ modkey,           }, "t", function () awful.util.spawn(terminal) end),
    awful.key({ modkey, "Shift"   }, "Return",
        function ()
            awful.util.spawn("xfce4-terminal --role=TempTerm --geometry=80x24+343+180")
        end),

    -- htop
    awful.key({ modkey,           }, "z",
        function ()
            if client.focus and client.focus.role == 'FullScreenHtop' then
                awful.client.movetotag(tags[mouse.screen][10], client.focus)
            else
                myutil.run_or_raise("xfce4-terminal --role=FullScreenHtop -e 'htop'", { role = "FullScreenHtop" })
            end
        end),

    -- My floating windows -> tag10
    awful.key({ modkey,           }, "q",
        function ()
            local c = client.focus
            if not c then return end
            if c.role == 'FullScreenHtop' or c.role == 'TempTerm' then
                awful.client.movetotag(tags[mouse.screen][10], c)
            end
        end),

    -- sdcv
    awful.key({ modkey            }, "d",
        function ()
            local new_word = selection()

            if _dict_notify ~= nil then
                naughty.destroy(_dict_notify)
                _dict_notify = nil
                if _old_word == new_word then
                    return
                end
            end
            _old_word = new_word

            local fc = ""
            local f  = io.popen("sdcv -n --utf8-output -u 'stardict1.3英汉辞典' '"..new_word.."'")
            for line in f:lines() do
                fc = fc .. line .. '\n'
            end
            f:close()
            _dict_notify = naughty.notify({ text = fc, timeout = 5, width = 320 })
        end),

    -- Volume
    awful.key({ }, 'XF86AudioRaiseVolume', function () volumectl("up", volumewidget) end),
    awful.key({ }, 'XF86AudioLowerVolume', function () volumectl("down", volumewidget) end),
    awful.key({ }, 'XF86AudioMute', function () volumectl("mute", volumewidget) end)
) -- }}}

-- {{{ clientkeys
clientkeys = awful.util.table.join(
    awful.key({ modkey,           }, "f",      function (c) c.fullscreen = not c.fullscreen  end),
    awful.key({ modkey,           }, "c",      function (c) c:kill()                         end),
    awful.key({ modkey, "Control" }, "space",  awful.client.floating.toggle                     ),
    awful.key({ modkey, "Control" }, "Return", function (c) c:swap(awful.client.getmaster()) end),
    awful.key({ modkey,           }, "o",      awful.client.movetoscreen                        ),
    awful.key({ modkey,           }, "a",      function (c) c.above = not c.above            end),
    awful.key({ modkey,           }, "s",      function (c) c.sticky = not c.sticky          end),
    awful.key({ modkey, "Shift"   }, "r",      function (c) c:redraw()                       end),
    awful.key({ modkey, "Shift"   }, "m",
        function (c)
            -- The client currently has the input focus, so it cannot be
            -- minimized, since minimized clients can't have the focus.
            c.minimized = true
        end),
    awful.key({ modkey,           }, "m",
        function (c)
            c.maximized_horizontal = not c.maximized_horizontal
            c.maximized_vertical   = not c.maximized_vertical
        end),
    awful.key({ modkey, "Shift"   }, "c",
        function (c)
            if not awful.client.floating.get(c) then return end
            awful.placement.centered(c)
        end)
) -- }}}

-- {{{ Switching to the numbered tag
do
    local keynumber = math.min(9, #tags[1]);
    for i = 1, keynumber do
        keynumber_reg(i)
    end
    if #tags[1] >= 10 then
        keynumber_reg(0, 10)
    end
end
-- }}}

-- Whether to raise the client on single click
raise_on_click = {}

-- {{{ clientbuttons
clientbuttons = awful.util.table.join(
    awful.button({ }, 1, function (c) client.focus = c; if raise_on_click[c] then c:raise() end end),
    awful.button({ modkey }, 1, awful.mouse.client.move),
    awful.button({ modkey }, 2, function (c) client.focus = c; c:kill() end),
    awful.button({ modkey }, 3, function (c) awful.mouse.client.resize(c, "bottom_right") end))
-- }}}

-- Set keys
root.keys(globalkeys)
-- }}}

-- {{{ Rules
function myfocus_filter(c)
  if awful.client.focus.filter(c) then
    -- This works with tooltips and some popup-menus
    if c.class == 'Wine' and c.above == true then
      return nil
    elseif c.class == 'Wine'
      and c.type == 'dialog'
      and c.skip_taskbar == true
      and c.size_hints.max_width and c.size_hints.max_width < 160
      then
      -- for popup item menus of Photoshop CS5
      return nil
    else
      return c
    end
  end
end
awful.rules.rules = {
  -- All clients will match this rule.
  {
    rule = { },
    properties = {
      border_width = beautiful.border_width,
      border_color = beautiful.border_normal,
      focus = myfocus_filter,
      keys = clientkeys,
      buttons = clientbuttons,
    }
  }, {
    rule = { class = "Screenruler" },
    properties = {
      floating = true,
      focus = false,
      border_width = 0,
    }
  }, {
    rule = { role = "FullScreenHtop" },
    properties = {
      maximized_horizontal = true,
      maximized_vertical = true,
    }
  }, {
    rule = { class = "Empathy" },
    properties = { tag = tags[1][6] },
  }, {
    rule = { class = "Firefox", instance = "firefox" },
    properties = { floating = true }
  }, {
    -- popup from FireGuesture with mouse wheel
    rule = {
      class = "Firefox",
      skip_taskbar = true,
      instance = 'Popup',
    },
    properties = {
      floating = true,
      border_width = 0,
    }
  }, {
    rule = { class = "Wireshark", name = "Wireshark" }, -- wireshark startup window
    properties = { floating = true }
  }, {
    rule_any = { 
      instance = {'TM.exe', 'QQ.exe'},
    },
    properties = {
      -- This, together with myfocus_filter, make the popup menus flicker taskbars less
      -- Non-focusable menus may cause TM2013preview1 to not highlight menu
      -- items on hover and crash.
      focusable = true,
      floating = true,
      border_width = 0,
    }
  }, {
    rule = {
      -- mainly for picpick
      class = "Wine",
      above = true,
    },
    properties = {
      floating = true,
      border_width = 0,
    }
  }, {
    rule = {
      -- for WinHex
      class = "Wine",
      instance = "WinHex.exe",
      name = "数据解释器",
    },
    properties = {
      floating = true,
      border_width = 0,
    }
  }, {
    rule = {
      class = "Wine",
      skip_taskbar = true,
      type = "dialog",
    },
    callback = function (c)
      if c.size_hints.max_width and c.size_hints.max_width < 160 then
        -- for popup item menus of Photoshop CS5
        c.border_width = 0
      end
    end,
  }, {
    rule = {
      -- 白板的工具栏
      name = 'frmPresentationTool',
      instance = 'picpick.exe',
    },
    properties = {
      ontop = true,
    }
  }, {
    rule_any = {
      class = {
        'MPlayer', 'Flashplayer', 'Gnome-mplayer', 'Totem',
        'Eog', 'feh', 'Display', 'Gimp', 'Gimp-2.6',
        'Screenkey', 'TempTerm', 'AliWangWang',
        'Dia', 'Pavucontrol', 'Stardict', 'XEyes', 'Skype',
      },
      name = {
        '文件传输', 'Firefox 首选项', '暂存器', 'Keyboard',
      },
      instance = {
        'Browser', -- 火狐的关于对话框
        'MATLAB', -- splash
      },
      role = {
        'TempTerm',
      },
    },
    properties = {
      floating = true,
    }
  }, {
    rule = {
      instance = "xfce4-notifyd",
    },
    properties = {
      border_width = 0,
    }
  },
}
-- }}}

-- {{{ Signals
-- Signal function to execute when a new client appears.
qqad_blocked = 0
local qq_dontblock = {
    '上线提醒', 'TXMenuWindow', '关闭提示', '系统消息', '选择文件夹',
    '导出', '查找', '保存', '打开', '删除好友',
}
client.connect_signal("manage", function (c, startup)
    -- Enable sloppy focus
    c:connect_signal("mouse::leave", function(c)
        if awful.layout.get(c.screen) ~= awful.layout.suit.magnifier
            and myfocus_filter(c) then
            client_unfocused = c.window
        end
    end)

    c:connect_signal("mouse::enter", function(c)
    -- 如果离开后又进入同一窗口则忽略，这解决了由于输入条而造成的焦点移动
        if client_unfocused ~= c.window
            and awful.layout.get(c.screen) ~= awful.layout.suit.magnifier
            and myfocus_filter(c) then
            client.focus = c
        end
    end)

    if c.class and (c.class == 'Gimp' or c.class == 'Gimp-2.8') then
        raise_on_click[c] = false
    else
        raise_on_click[c] = true
    end

    if not startup then
        -- Set the windows at the slave,
        -- i.e. put it at the end of others instead of setting it master.
        -- awful.client.setslave(c)

        -- Put windows in a smart way, only if they does not set an initial position.
        if not c.size_hints.user_position and not c.size_hints.program_position then
            awful.placement.no_overlap(c)
            awful.placement.no_offscreen(c)
        end
    end

    if c.name and c.name:match('^FlashGot') then
        c.minimized = true
        -- naughty.notify({title="FlashGot", text="OK"})
    elseif c.instance == 'empathy-chat' or (c.role == 'conversation' and c.class == 'Pidgin') then
        local t
        t = c:tags()
        if #t == 1 and t[1] == tags[mouse.screen][6] then
            awful.util.spawn_with_shell('sleep 0.1 && fcitx-remote -T', false)
        else
            awful.client.movetotag(tags[mouse.screen][6], c)
        end
    elseif c.instance == 'TM.exe' then -- TM2013
        bind_alt_switch_tab_keys(c)
        if c.name and c.name:match('^腾讯') and c.above then
            qqad_blocked = qqad_blocked + 1
            naughty.notify{title="QQ广告屏蔽 " .. qqad_blocked, text="检测到一个符合条件的窗口，标题为".. c.name .."。"}
            c:kill()
        end
    elseif c.instance == 'QQ.exe' then
        local handled
        -- naughty.notify({title="新窗口", text="名称为 ".. c.name .."，class 为 " .. c.class:gsub('&', '&amp;') .. " 的窗口已接受管理。", preset=naughty.config.presets.critical})
        for _, i in pairs(qq_dontblock) do
            if c.name == i then
                handled = true
                break
            end
        end

        if not handled then
            if c.name and c.above and not c.name:match('^%w+$') then
                qqad_blocked = qqad_blocked + 1
                naughty.notify({title="QQ广告屏蔽 " .. qqad_blocked, text="检测到一个符合条件的窗口，标题为".. c.name .."。"})
                c:kill()
            else
                awful.client.movetotag(tags[mouse.screen][3], c)
            end
        end
        handled = false
    end
end)

client.connect_signal("focus", function(c) c.border_color = beautiful.border_focus end)
client.connect_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)

client.add_signal("unmanage", function(c)
    raise_on_click[c] = nil
end)
-- }}}

-- {{{ other things
awful.util.spawn("awesomeup", false)
awful.tag.viewonly(tags[1][6])
-- vim: set fdm=marker et sw=4:
-- }}}
