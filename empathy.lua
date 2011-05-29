---------------------------------------------------------------------------
-- Awesome layout suitable for windows which should be long and thin
-- or short and wide
-- Author: lilydjwg <lilydjwg@gmail.com>
---------------------------------------------------------------------------

-- Grab environment we need
local ipairs = ipairs
local math = math
-- “联系人列表”宽度
local buddylist_height = 295
-- local naughty = naughty

--- empathy layouts module for awful
module("awful.layout.suit.empathy")

local function empathy(p)
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
    local buddylist
    for k, c in ipairs(p.clients) do
      if c.name ~= '联系人列表' and c.name ~= 'Contact List' then
	cls[k] = c
      else
	buddylist = c
	c:geometry({
	  width = buddylist_height,
	  height = area.height,
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
  end
end

-- @param screen The screen to arrange.
name = "empathy"
function arrange(p)
  return empathy(p)
end
