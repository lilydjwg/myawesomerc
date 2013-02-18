---------------------------------------------------------------------------
-- Awesome layout suitable for windows which should be long and thin
-- or short and wide
-- Author: lilydjwg <lilydjwg@gmail.com>
---------------------------------------------------------------------------

-- Grab environment we need
local ipairs = ipairs
local math = math
local table = table
-- “联系人列表”宽度
local buddylist_height = 295
-- local naughty = naughty

local function do_empathy(p)
  if #p.clients > 0 then
    -- 每行最多窗口数
    local cols = 4
    local area = {}
    area.height = p.workarea.height
    area.width = p.workarea.width
    area.x = p.workarea.x
    area.y = p.workarea.y

    -- “联系人列表”窗口
    local cls = {}
    local buddylist_swap
    for k, c in ipairs(p.clients) do
      if c.name ~= '联系人列表' and c.name ~= 'Contact List' and c.name ~= '好友列表' then
	table.insert(cls, c)
      else
	if k ~= 1 then
	  buddylist_swap = c
	end
	c:geometry({
	  width = buddylist_height - 2,
	  height = area.height - 4,
	  x = area.x,
	  y = area.y,
	})
	cols = cols - 1
	area.x = area.x + buddylist_height
	area.width = area.width - buddylist_height
      end
    end

    local rows = math.ceil(#cls / cols)
    local cols = math.ceil(#cls / rows)
    local aligned = (rows-1) * cols
    local col = 1
    local row = 1

    -- 计算其它窗口
    for k, c in ipairs(cls) do
      local g = {}
      g.height = area.height / rows
      if k <= aligned then
	g.width = area.width / cols
      else
	g.width = area.width / (#cls - (rows-1) * cols)
      end

      g.x = area.x + (col-1) * g.width
      g.y = area.y + (row-1) * g.height
      if row == rows then
	g.height = g.height - 4
      else
	g.height = g.height - 2
      end
      g.width = g.width - 2

      if col == cols then
	col = 1
	row = row + 1
      else
	col = col + 1
      end

      c:geometry(g)
      -- naughty.notify({ title=c.name, text= 'w: '.. g.width .. '\th: '.. g.height .. '\nx: '.. g.x .. '\ty: '.. g.y,
      -- timeout = 0 })
    end
    if #cls > 0 and buddylist_swap then
      buddylist_swap:swap(cls[1])
    end
  end
end

local empathy = {}
empathy.name = "empathy"

-- @param screen The screen to arrange.
function empathy.arrange(p)
  return do_empathy(p)
end

return empathy
