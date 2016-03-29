
local mypaint_tree_colors = {
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
	"default:tree","default:acacia_tree","default:jungletree","default:aspen_tree","default:pine_tree",
}

for _, entry in ipairs(mypaint_tree_colors) do
	local color = entry[1]
	local desc = entry[2]
	local paint = "^[colorize:"..entry[3]

-- Wood

minetest.register_node(":default:tree_" .. color, {
	description = desc .. " Tree",
	tiles = {"default_tree_top.png".. paint, "default_tree_top.png".. paint,
		"default_tree.png".. paint},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 0},
	sounds = default.node_sound_wood_defaults(),
})

---[[ Acacia
minetest.register_node(":default:acacia_tree_" .. color, {
	description = desc .. " Acacia",
	tiles = {"default_acacia_tree_top.png".. paint, "default_acacia_tree_top.png".. paint,
		"default_acacia_tree.png".. paint},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})

-- Jungle
minetest.register_node(":default:jungletree_" .. color, {
	description = desc .. " Jungletree",
	tiles = {"default_jungletree_top.png".. paint, "default_jungletree_top.png".. paint,
		"default_jungletree.png".. paint},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})

-- Aspen
minetest.register_node(":default:aspen_tree_" .. color, {
	description = desc .. " Aspen Tree",
	tiles = {"default_aspen_tree_top.png".. paint, "default_aspen_tree_top.png".. paint,
		"default_aspen_tree.png".. paint},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})

-- Pine
minetest.register_node(":default:pine_tree_" .. color, {
	description = desc .. " Pine Tree",
	tiles = {"default_pine_tree_top.png".. paint, "default_pine_tree_top.png".. paint,
		"default_pine_tree.png".. paint},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})


end

local colors = {}
for _, entry in ipairs(mypaint_tree_colors) do
	table.insert(colors, entry[1])
end
	mypaint.register(paintables, colors)

