
local mypaint_tree_colors = {
		{"red",			"Red", 			"ff0000"},
 		{"green",		"Green", 		"00ff00"},
 		{"white",		"White", 		"ffffff"},
		{"black",		"Black",		"000000"},
		{"blue",		"Blue",			"0000ff"},
		{"brown",		"Brown",		"190B07"},
		{"cyan",		"Cyan",			"00ffff"},
		{"darkgreen",	"Dark Green",	"005000"},
		{"darkgery",	"Dark Grey",	"1C1C1C"},
		{"gery",		"Grey",			"848484"},
		{"magenta",		"Magenta",		"ff00ff"},
		{"orange",		"Orange",		"ff7700"},
		{"pink",		"Pink",			"FE2E9A"},
		{"violet",		"Violet",		"7f007f"},
		{"yellow",		"Yellow",		"ffff00"},
}

local paintables = {
	"default:tree","default:acacia_tree","default:jungletree","default:aspen_tree","default:pine_tree",
}

for _, entry in ipairs(mypaint_tree_colors) do
	local color = entry[1]
	local desc = entry[2]
	local paint = "^[colorize:#"..entry[3]..":100"

-- Wood

minetest.register_node(":default:tree_" .. color, {
	description = desc .. " Tree",
	tiles = {"default_tree_top.png".. paint, "default_tree_top.png".. paint,
		"default_tree.png".. paint},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
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

