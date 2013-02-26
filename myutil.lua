local awful = require("awful")
local client = client
local pairs = pairs
local table = table

local myutil = {}

-- Returns true if all pairs in table1 are present in table2 {{{1
local function match (table1, table2)
  for k, v in pairs(table1) do
    -- not all clients have all properties so first test if it is nil
    if not table2[k] or (table2[k] ~= v and not table2[k]:find(v)) then
      return false
    end
  end
  return true
end

-- Get clients by condition {{{1
local function getclients(properties)
  local clients = client.get()
  local focused = awful.client.next(0)
  local findex = 0
  local matched_clients = {}
  local n = 0
  for i, c in pairs(clients) do
    --make an array of matched clients
    if match(properties, c) then
      n = n + 1
      matched_clients[n] = c
      if c == focused then
	findex = n
      end
    end
  end
  return matched_clients, findex
end

-- {{{1 run_or_raise
-- 来源: http://awesome.naquadah.org/wiki/Run_or_raise
function myutil.run_or_raise(cmd, properties, beforemove)
  local findex, matched_clients
  matched_clients, findex = getclients(properties)
  local n = #matched_clients
  if n > 0 then
    local c = matched_clients[1]
    -- if the focused window matched switch focus to next in list
    if 0 < findex and findex < n then
      c = matched_clients[findex+1]
    end
    local ctags = c:tags()
    local curtag = awful.tag.selected()
    if beforemove then
      beforemove(c)
    end
    awful.client.movetotag(curtag, c)
    -- And then focus the client
    client.focus = c
    c:raise()
    -- if the client is maximized on another screen, re-maximize it if necessary
    if c.maximized_horizontal and c.maximized_vertical then
      local geo = c:geometry()
      local area = geo.width * geo.height
      local wa = screen[mouse.screen].workarea
      local area_t = wa.width * wa.height
      -- too large or small?
      if area < area_t * 0.9 or area > area_t then
	c.maximized_horizontal = false
	c.maximized_vertical = false
	c.maximized_horizontal = true
	c.maximized_vertical = true
      end
    end
    return c
  end
  awful.util.spawn(cmd)
end

return myutil

-- {{{1 vim modeline
-- vim: se fdm=marker:
