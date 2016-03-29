
local mypaint_fence_colors = {
	{"black",      "Black",      "#000000b0"},
	{"blue",       "Blue",       "#015dbb70"},
	{"brown",      "Brown",      "#a78c4570"},
	{"cyan",       "Cyan",       "#01ffd870"},
	{"darkgreen", "Dark Green",  "#005b0770"},
	{"darkgrey",  "Dark Grey",   "#303030b0"},
	{"green",      "Green",      "#61ff0170"},
	{"grey",       "Grey",       "#5b5b5bb0"},
	{"magenta",    "Magenta",    "#ff05bb70"},
	{"orange",     "Orange",     "#ff840170"},
	{"pink",       "Pink",       "#ff65b570"},
	{"red",        "Red",        "#ff000070"},
	{"violet",     "Violet",     "#2000c970"},
	{"white",      "White",      "#abababc0"},
	{"yellow",     "Yellow",     "#e3ff0070"},
}

local paintables = {
	"default:fence_wood","default:fence_acacia_wood","default:fence_junglewood","default:fence_aspen_wood","default:fence_pine_wood",
}

for _, entry in ipairs(mypaint_fence_colors) do
	local color = entry[1]
	local desc = entry[2]
	local paint = "^[colorize:"..entry[3]


-- Wood Fence

default.register_fence(":default:fence_wood_" .. color, {
	description = desc .. " Wooden Fence",
	texture = "default_wood.png".. paint,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})

-- Acacia Fence
default.register_fence(":default:fence_acacia_wood_" .. color, {
	description = desc .. " Acacia Fence",
	texture = "default_acacia_wood.png".. paint,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})

-- Jungle Fence
default.register_fence(":default:fence_junglewood_" .. color, {
	description = desc .. " Junglewood Fence",
	texture = "default_junglewood.png".. paint,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})

-- Aspen Fence
default.register_fence(":default:fence_aspen_wood_" .. color, {
	description = desc .. " Aspen Fence",
	texture = "default_aspen_wood.png".. paint,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})

-- Pine Fence
default.register_fence(":default:fence_pine_wood_" .. color, {
	description = desc .. " Pine Fence",
	texture = "default_pine_wood.png".. paint,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})



end

local colors = {}
for _, entry in ipairs(mypaint_fence_colors) do
	table.insert(colors, entry[1])
end
	mypaint.register(paintables, colors)

