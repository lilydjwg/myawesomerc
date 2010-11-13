local awful = awful
local client = client
local pairs = pairs
local table = table

module("myutil")

-- {{{1 run_or_raise
-- 来源: http://awesome.naquadah.org/wiki/Run_or_raise
-- {{{2 主函数
function run_or_raise(cmd, properties)
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
  if n > 0 then
    local c = matched_clients[1]
    -- if the focused window matched switch focus to next in list
    if 0 < findex and findex < n then
      c = matched_clients[findex+1]
    end
    local ctags = c:tags()
    local curtag = awful.tag.selected()
    awful.client.movetotag(curtag, c)
    -- And then focus the client
    client.focus = c
    c:raise()
    return
  end
  awful.util.spawn(cmd)
end

-- Returns true if all pairs in table1 are present in table2 {{{2
function match (table1, table2)
  for k, v in pairs(table1) do
    if table2[k] ~= v and not table2[k]:find(v) then
      return false
    end
  end
  return true
end

