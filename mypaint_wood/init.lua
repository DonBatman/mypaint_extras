
local mypaint_wood_colors = {
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
	"default:wood","default:acacia_wood","default:junglewood","default:aspen_wood","default:pine_wood",
}

for _, entry in ipairs(mypaint_wood_colors) do
	local color = entry[1]
	local desc = entry[2]
	local paint = "^[colorize:"..entry[3]


-- Wood

minetest.register_node(":default:wood_" .. color, {
	description = desc .. " Wood",
	tiles = {"default_wood.png".. paint},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 0},
	sounds = default.node_sound_wood_defaults(),
})

-- Acacia
minetest.register_node(":default:acacia_wood_" .. color, {
	description = desc .. " Acacia",
	tiles = {"default_acacia_wood.png".. paint},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})

-- Jungle
minetest.register_node(":default:junglewood_" .. color, {
	description = desc .. " Junglewood",
	tiles = {"default_junglewood.png".. paint},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})

-- Aspen
minetest.register_node(":default:aspen_wood_" .. color, {
	description = desc .. " Aspen",
	tiles = {"default_aspen_wood.png".. paint},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})

-- Pine
minetest.register_node(":default:pine_wood_" .. color, {
	description = desc .. " Pine",
	tiles = {"default_pine_wood.png".. paint},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})



end

local colors = {}
for _, entry in ipairs(mypaint_wood_colors) do
	table.insert(colors, entry[1])
end
	mypaint.register(paintables, colors)

