---------------------------------------------------------------------------
-- @author Uli Schlachter
-- @author dodo
-- @author lilydjwg
-- some code is borrowed from /usr/share/awesome/lib/wibox/widget/textbox.lua
-- @copyright 2010, 2011 Uli Schlachter, dodo, lilydjwg
-- @release v3.5
---------------------------------------------------------------------------

local base = require("wibox.widget.textbox")
local lgi = require("lgi")
local Pango = lgi.Pango

-- Setup a pango layout for the given textbox and cairo context
local function setup_layout(box, width, height)
    local layout = box._layout
    layout.width = Pango.units_from_double(width)
    layout.height = Pango.units_from_double(height)
end

--- Fit the given textbox
--  @return width and height needed in pixels
local function fit(self, width, height)
    setup_layout(self, width, height)
    local ink, logical = self._layout:get_pixel_extents()
    return self.width or logical.width, logical.height
end

local function textbox(...)
    local box = base(...)
    box.fit = fit
    return box
end

return textbox

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
