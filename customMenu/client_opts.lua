local setmetatable = setmetatable
local ipairs = ipairs
local table = table
local print = print
local button     = require("awful.button")
local layout     = require("awful.layout")
local tag        = require("awful.tag")
local util       = require("awful.util")
local beautiful  = require("beautiful")
local wibox      = require("wibox")
local tooltip2   = require( "radical.tooltip" )
--local themeutils = require( "blind.common.drawing"    )
local radical    = require("radical")
local color = require("gears.color")
local tag_menu = require( "radical.impl.common.tag" )
local r = require("radical.radial")

local capi = {client = client,mouse=mouse}

local module = {}

local v = nil

local centered = nil

local function button_group(args)
  v = capi.client.focus
  print(beautiful.path .. "Icon/titlebar/" .. args.field .."_normal_"..(args.checked() and "active" or "inactive")..".png")
  centered:add_item{ icon = beautiful.path .. "Icon/titlebar/" .. args.field .."_normal_"..(args.checked() and "active" or "inactive")..".png", text = args.field, button1 = args.button1 }
end

local function new(screen, layouts)
--     centered = radical.box({filter=false,item_style=radical.item.style.rounded,item_height=45,column=6,layout=radical.layout.grid,screen=screen})

--     button_group({client = v, field = "floating" , focus = false, checked = function(c) return v.floating  end, button1 = function(c) v.floating  = not v.floating  end })
--     button_group({client = v, field = "maximized", focus = false, checked = function(c) return v.maximized end, button1 = function(c) v.maximized = not v.maximized end })
--     button_group({client = v, field = "sticky"   , focus = false, checked = function(c) return v.sticky    end, button1 = function(c) v.sticky    = not v.sticky    end })
--     button_group({client = v, field = "ontop"    , focus = false, checked = function(c) return v.ontop     end, button1 = function(c) v.ontop     = not v.ontop     end })
--     button_group({client = v, field = "close"    , focus = false, checked = function(c) return false       end, button1 = function(c) v:kill()                      end })

--     print("ICI")
    local rrr = r.radial_client_select({})

    return centered
end

return setmetatable(module, { __call = function(_, ...) return new(...) end })
