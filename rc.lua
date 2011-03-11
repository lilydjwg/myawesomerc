-- Standard awesome library
require("awful")
require("awful.autofocus")
require("awful.rules")
-- Theme handling library
require("beautiful")
-- Notification library
require("naughty")
-- require("vicious")

-- Load Debian menu entries
require("debian.menu")

-- my modules
require("empathy")
require("myutil")

os.setlocale("zh_CN.UTF-8")

-- {{{1 Variable definitions
-- Themes define colours, icons, and wallpapers
theme_path = awful.util.getdir("config") .. "/theme.lua"
beautiful.init(theme_path)

-- This is used later as the default terminal and editor to run.
terminal = "gnome-terminal --disable-factory --working-directory=/home/lilydjwg/tmpfs"
editor = "gvim" or os.getenv("EDITOR") or "editor"
-- editor_cmd = terminal .. " -e " .. editor
editor_cmd = editor

-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
modkey = "Mod4"

-- Table of layouts to cover with awful.layout.inc, order matters.
layouts =
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

-- {{{1 Tags
-- Define a tag table which hold all screen tags.
tags_name = { "1", "2", "3", "4", "5文件", "6聊天", "7GVIM", "8终端", "9火狐", '0' }
tags_layout = {
    awful.layout.suit.tile,
    awful.layout.suit.tile,
    awful.layout.suit.tile,
    awful.layout.suit.tile,
    awful.layout.suit.floating,
    awful.layout.suit.empathy,
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

-- tags[1][9].selected = true

-- {{{1 Menu
-- Create a laucher widget and a main menu
myawesomemenu = {
   { "编辑配置", editor_cmd .. " " .. awful.util.getdir("config") .. "/rc.lua" },
   { "重新加载", awesome.restart },
   { "注销", awesome.quit },
}

mymenu = {
   { "新立得", "gksu -D /usr/share/applications/synaptic.desktop synaptic" },
   { "Wireshark", "gksu -D /usr/share/applications/wireshark.desktop wireshark" },
   { "VirtualBox", "VirtualBox" },
   { "文档查看器", "evince" },
}

mymainmenu = awful.menu({ items = { { "Awesome", myawesomemenu, beautiful.awesome_icon },
				    { "终端", terminal },
				    { "GVIM", "gvim" },
				    { "火狐", "firefox" },
				    { "常用", mymenu },
				    { "Debian", debian.menu.Debian_menu.Debian },
				    { "关机", "dbus-send --system --print-reply --dest=org.freedesktop.Hal /org/freedesktop/Hal/devices/computer org.freedesktop.Hal.Device.SystemPowerManagement.Shutdown" },
				  }
			})

mylauncher = awful.widget.launcher({ image = image(beautiful.awesome_icon),
				     menu = mymainmenu })

-- {{{1 Wibox
-- {{{2Create a textclock widget
mytextclock = widget({ type = "textbox", align = "right" })
myclock = timer({ timeout = 1 })
myclock:add_signal("timeout", function() mytextclock.text = os.date(" %Y年%m月%d日 %H:%M:%S %A ") end)
myclock:start()

-- {{{2 Network usage widget
-- Initialize widget
-- netwidget = widget({ type = "textbox" })
-- Register widget
-- vicious.register(netwidget, vicious.widgets.net, '<span color="#CC9393">${eth0 down_kb}</span> <span color="#7F9F7F">${eth0 up_kb}</span>', 3)

-- {{{2 Create a systray
mysystray = widget({ type = "systray" })

-- {{{2 Create a wibox for each screen and add it
mywibox = {}
mypromptbox = {}
mylayoutbox = {}
mytaglist = {}
mytaglist.buttons = awful.util.table.join(
		    awful.button({ }, 1, awful.tag.viewonly),
		    awful.button({ modkey }, 1, awful.client.movetotag),
		    awful.button({ }, 3, awful.tag.viewtoggle),
		    awful.button({ modkey }, 3, awful.client.toggletag),
		    awful.button({ }, 4, awful.tag.viewnext),
		    awful.button({ }, 5, awful.tag.viewprev)
		    )
mytasklist = {}
mytasklist.buttons = awful.util.table.join(
		     awful.button({ }, 1, function (c)
					      cf = client.focus
					      if cf == c and not cf.minimized then
						 cf.minimized = true
						 do return end
					      elseif c.minimized then
						 c.minimized = false
					      end
					      client.focus = c
					      c:raise()
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

for s = 1, screen.count() do -- {{{2
    -- Create a promptbox for each screen
    mypromptbox[s] = awful.widget.prompt({ layout = awful.widget.layout.horizontal.leftright })
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    mylayoutbox[s] = awful.widget.layoutbox(s)
    mylayoutbox[s]:buttons(awful.util.table.join(
			   awful.button({ }, 1, function () awful.layout.inc(layouts, 1) end),
			   awful.button({ }, 3, function () awful.layout.inc(layouts, -1) end),
			   awful.button({ }, 4, function () awful.layout.inc(layouts, 1) end),
			   awful.button({ }, 5, function () awful.layout.inc(layouts, -1) end)))
    -- Create a taglist widget
    mytaglist[s] = awful.widget.taglist(s, awful.widget.taglist.label.all, mytaglist.buttons)

    -- Create a tasklist widget
    mytasklist[s] = awful.widget.tasklist(function(c)
					      return awful.widget.tasklist.label.currenttags(c, s)
					  end, mytasklist.buttons)

    -- Create the wibox
    mywibox[s] = awful.wibox({ position = "top", screen = s, height = 18 })
    -- Add widgets to the wibox - order matters
    mywibox[s].widgets = {
	{
	    mylauncher,
	    mytaglist[s],
	    mypromptbox[s],
	    layout = awful.widget.layout.horizontal.leftright
	},
	mylayoutbox[s],
	mytextclock,
	-- netwidget,
	s == 1 and mysystray or nil,
	mytasklist[s],
	layout = awful.widget.layout.horizontal.rightleft
    }
end

-- {{{1 Mouse bindings
root.buttons(awful.util.table.join(
    awful.button({ }, 3, function () mymainmenu:toggle() end),
    awful.button({ }, 4, awful.tag.viewnext),
    awful.button({ }, 5, awful.tag.viewprev)
))

-- {{{1 键盘快捷键
-- {{{2 要用到的函数
keynumber_reg = function (i, which) -- {{{3
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
    awful.key({ modkey, "Mod1"	 }, i,
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
end

movebyrelidx = function (n, view) -- {{{3
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
end

-- {{{2 键设置
globalkeys = awful.util.table.join(
    -- 切换 tag {{{3
    awful.key({ modkey,		  }, "Left",   awful.tag.viewprev	),
    awful.key({ modkey,		  }, "Right",  awful.tag.viewnext	),
    -- 切换桌面，这样更方便
    awful.key({ modkey,		  }, "p",      awful.tag.viewprev	),
    awful.key({ modkey,		  }, "n",      awful.tag.viewnext	),
    awful.key({ modkey, "Shift"   }, "p",      function ()
	movebyrelidx(-1, true)
    end),
    awful.key({ modkey, "Shift"   }, "n",      function ()
	movebyrelidx(1, true)
    end),
    awful.key({ modkey, "Mod1"	  }, "p",      function ()
	movebyrelidx(-1, false)
    end),
    awful.key({ modkey, "Mod1"	  }, "n",      function ()
	movebyrelidx(1, false)
    end),
    -- 截图 {{{3
    awful.key({			  }, "Print", function ()
	-- 截图：全屏
	awful.util.spawn("zsh -c 'cd ~/tmpfs\nscrot\n'")
	os.execute("sleep .5")
	naughty.notify({title="截图", text="全屏截图已保存。"})
    end),
    awful.key({ "Shift",	  }, "Print", function ()
	-- 截图：当前窗口
	awful.util.spawn("zsh -c 'cd ~/tmpfs\nscrot -u\n'")
	os.execute("sleep .5")
	naughty.notify({title="截图", text="当前窗口截图已保存。"})
    end),

    -- {{{3 窗口管理
    -- Alt-Tab etc
    awful.key({ "Mod1",		  }, "Tab",
	function ()
	    awful.client.focus.byidx( 1)
	    if client.focus then client.focus:raise() end
	end),
    awful.key({ "Mod1", "Shift"   }, "Tab",
	function ()
	    awful.client.focus.byidx(-1)
	    if client.focus then client.focus:raise() end
	end),

    awful.key({ modkey,		  }, "j",
	function ()
	    awful.client.focus.byidx( 1)
	    if client.focus then client.focus:raise() end
	end),
    awful.key({ modkey,		  }, "k",
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

    awful.key({ modkey, "Shift"   }, "j", function () awful.client.swap.byidx(	1)    end),
    awful.key({ modkey, "Shift"   }, "k", function () awful.client.swap.byidx( -1)    end),
    awful.key({ modkey, "Control" }, "j", function () awful.screen.focus_relative( 1) end),
    awful.key({ modkey, "Control" }, "k", function () awful.screen.focus_relative(-1) end),
    awful.key({ modkey,		  }, "u", awful.client.urgent.jumpto),
    awful.key({ modkey,		  }, "Tab", function ()
	awful.client.focus.history.previous()
	if client.focus then
	    client.focus:raise()
	end
    end),
    awful.key({ modkey,		  }, "Escape", awful.tag.history.restore),

    -- {{{3 窗口布局
    awful.key({ modkey,		  }, "l",     function () awful.tag.incmwfact( 0.05)	end),
    awful.key({ modkey,		  }, "h",     function () awful.tag.incmwfact(-0.05)	end),
    awful.key({ modkey, "Shift"   }, "h",     function () awful.tag.incnmaster( 1)	end),
    awful.key({ modkey, "Shift"   }, "l",     function () awful.tag.incnmaster(-1)	end),
    awful.key({ modkey, "Control" }, "h",     function () awful.tag.incncol( 1)		end),
    awful.key({ modkey, "Control" }, "l",     function () awful.tag.incncol(-1)		end),
    awful.key({ modkey,		  }, "space", function () awful.layout.inc(layouts,  1) end),
    awful.key({ modkey, "Shift"   }, "space", function () awful.layout.inc(layouts, -1) end),

    -- {{{3 程序
    awful.key({ modkey,		  }, "g", function () awful.util.spawn("gvim") end),
    awful.key({ "Control", "Mod1" }, "e", function () awful.util.spawn("nautilus --no-desktop /home/lilydjwg/tmpfs") end),
    awful.key({ "Control", "Mod1", "Shift" }, "x", function () awful.util.spawn("xkill") end),
    awful.key({ "Control", "Mod1" }, "l", function () awful.util.spawn("leave") end),
    awful.key({ modkey,		  }, "w", function () mymainmenu:show({keygrabber=true}) end),
    awful.key({ modkey, "Control" }, "r",      awesome.restart),
    awful.key({ modkey, "Control" }, "q",      awesome.quit),
    -- {{{4 终端
    -- 找一个居中终端来
    awful.key({ modkey,		  }, "Return", function ()
	myutil.run_or_raise("gnome-terminal --disable-factory --working-directory=/home/lilydjwg/tmpfs --class TempTerm --geometry 80x24+343+180",
	{ class = "TempTerm" })
    end),

    -- 新居中终端
    awful.key({ modkey, "Shift"   }, "Return", function ()
	awful.util.spawn("gnome-terminal --disable-factory --working-directory=/home/lilydjwg/tmpfs --class TempTerm --geometry 80x24+343+180")
    end),

    -- 普通终端
    awful.key({ modkey,		  }, "t", function ()
	awful.util.spawn(terminal)
    end),

    -- htop
    awful.key({ modkey,		 }, "z", function ()
	if client.focus and client.focus.class == 'FullScreenHtop' then
	    awful.client.movetotag(tags[mouse.screen][10], client.focus)
	else
	    myutil.run_or_raise("gnome-terminal --disable-factory --class FullScreenHtop -e 'htop'",
	    { class = "FullScreenHtop" })
	end
    end),

    -- {{{4 临时窗口 -> tag10
    awful.key({ modkey,		  }, "q", function ()
	local c = client.focus
	if c.class == 'FullScreenHtop' or c.class == 'TempTerm' then
	    awful.client.movetotag(tags[mouse.screen][10], c)
	end
    end),

    -- {{{3 sdcv
    awful.key({ modkey }, "d", function ()
	local f = io.popen("xsel -p")
	local new_word = f:read("*a")
	f:close()

	if frame ~= nil then
	    naughty.destroy(frame)
	    frame = nil
	    if old_word == new_word then
		return
	    end
	end
	old_word = new_word

	local fc = ""
	local f  = io.popen("sdcv -n --utf8-output -u 'stardict1.3英汉辞典' '"..new_word.."'")
	for line in f:lines() do
	    fc = fc .. line .. '\n'
	end
	f:close()
	frame = naughty.notify({ text = fc, timeout = 5, width = 320 })
    end),

    -- {{{3 Prompt
    awful.key({ "Mod1"		  }, "F2",     function () mypromptbox[mouse.screen]:run() end),
    awful.key({ modkey		  }, "r",     function () mypromptbox[mouse.screen]:run() end),

    awful.key({ modkey		  }, "x",
	      function ()
		  awful.prompt.run({ prompt = "Run Lua code: " },
		  mypromptbox[mouse.screen].widget,
		  awful.util.eval, nil,
		  awful.util.getdir("cache") .. "/history_eval")
	      end)
)

    -- {{{3 窗口的快捷键
clientkeys = awful.util.table.join(
    -- 置顶
    awful.key({ modkey,		  }, "a",      function (c) c.above = not c.above	     end),
    awful.key({ modkey,		  }, "f",      function (c) c.fullscreen = not c.fullscreen  end),
    -- 关闭
    awful.key({ modkey,		  }, "c",      function (c) c:kill()			     end),
    awful.key({ "Mod1",		  }, "F4",     function (c) c:kill()			     end),
    awful.key({ modkey, "Control" }, "space",  awful.client.floating.toggle			),
    awful.key({ modkey, "Control" }, "Return", function (c) c:swap(awful.client.getmaster()) end),
    awful.key({ modkey,		  }, "o",      awful.client.movetoscreen			),
    awful.key({ modkey, "Shift"   }, "r",      function (c) c:redraw()			     end),
    -- 最大最小化
    awful.key({ modkey, "Shift"   }, "m",      function (c) c.minimized = not c.minimized    end),
    awful.key({ modkey,		  }, "m",      function (c)
	c.maximized_horizontal = not c.maximized_horizontal
	c.maximized_vertical   = not c.maximized_vertical
    end)
)

-- {{{3 切换桌面
for s = 1, screen.count() do
   keynumber = math.min(9, #tags[s]);
   for i = 1, keynumber do
      keynumber_reg(i)
   end
   if #tags[s] >= 10 then
      keynumber_reg(0, 10)
   end
end

-- {{{3 鼠标键绑定
clientbuttons = awful.util.table.join(
    awful.button({ }, 1, function (c) client.focus = c; c:raise() end),
    awful.button({ modkey }, 1, awful.mouse.client.move),
    awful.button({ modkey }, 2, function (c) client.focus = c; c:kill() end),
    awful.button({ modkey }, 3, awful.mouse.client.resize))

-- {{{3 Set keys
root.keys(globalkeys)

-- {{{1 Rules
awful.rules.rules = {
    -- All clients will match this rule.
    { rule = { },
      properties = { border_width = beautiful.border_width,
		     border_color = beautiful.border_normal,
		     focus = true,
		     keys = clientkeys,
		     buttons = clientbuttons } },
    { rule = { class = "MPlayer" },
      properties = { floating = true } },
    { rule = { class = "Gnome-mplayer" },
      properties = { floating = true } },
    { rule = { class = "Totem" },
      properties = { floating = true } },
    { rule = { class = "feh" },
      properties = { floating = true } },
    { rule = { class = "gimp" },
      properties = { floating = true } },
    -- 下面是我自己的设置
    { rule = { class = "Screenruler" },
      properties = { floating = true,
		     focus = false,
		     border_width = 0} },
    { rule = { class = "Gloobus-preview" },
      properties = { floating = true,
		     skip_taskbar = true,
		     above = true,
		     border_width = 0} },
    { rule = { name = "文件传输" },
      properties = { floating = true } },
     -- 居中的终端
    { rule = { class = "TempTerm" },
      properties = { floating = true } },
    { rule = { class = "Tomboy" },
      properties = { floating = true } },
    { rule = { name = "Firefox 首选项" },
      properties = { floating = true } },
    { rule = { instance = "QQ.exe" },
      properties = { floating = true } },

    { rule = { class = "FullScreenHtop" },
      properties = { maximized_horizontal = true,
		     maximized_vertical = true } },

    { rule = { class = "Empathy" },
      properties = { tag = tags[1][6] } },
    { rule = { class = "QQ.exe" },
      properties = { tag = tags[1][3] } },
}

-- {{{1 Signals
-- Signal function to execute when a new client appears.
client.add_signal("manage", function (c, startup)
    -- Add a titlebar
    -- awful.titlebar.add(c, { modkey = modkey })

    -- Enable sloppy focus
    c:add_signal("mouse::leave", function(c)
	if awful.layout.get(c.screen) ~= awful.layout.suit.magnifier
	    and awful.client.focus.filter(c) then
	    client_unfocused = c.window
	end
    end)
    c:add_signal("mouse::enter", function(c)
	-- 如果离开后又进入同一窗口则忽略，这解决了由于输入条而造成的焦点移动
	if client_unfocused ~= c.window
	    and awful.layout.get(c.screen) ~= awful.layout.suit.magnifier
	    and awful.client.focus.filter(c) then
	    client.focus = c
	end
    end)

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
    if c.class == 'QQ.exe' and c.above then
	naughty.notify({title="QQ广告屏蔽", text="检测到一个符合条件的窗口，标题为".. c.name .."。"})
    end
    if c.class == 'QQ.exe' and c.name == '腾讯网新闻' then
	c:kill()
    end
end)

client.add_signal("focus", function(c) c.border_color = beautiful.border_focus end)
client.add_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)

awful.util.spawn("awesomeup")
awful.util.spawn("numlockx on")

-- vim: set fdm=marker sw=4 sts=4:
