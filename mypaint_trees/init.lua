
local mypaint_tree_colors = {
		{"red",			"Red", 			"ff0000"},
 		{"green",		"Green", 		"00ff00"},
 		{"white",		"White", 		"ffffff"},
		{"black",		"Black",		"000000"},
		{"blue",		"Blue",			"0000ff"},
		{"brown",		"Brown",		"190B07"},
		{"cyan",		"Cyan",			"00ffff"},
		{"darkgreen",	"Dark Green",	"005000"},
		{"darkgrey",	"Dark Grey",	"1C1C1C"},
		{"grey",		"Grey",			"848484"},
		{"magenta",		"Magenta",		"ff00ff"},
		{"orange",		"Orange",		"ff7700"},
		{"pink",		"Pink",			"FE2E9A"},
		{"violet",		"Violet",		"7f007f"},
		{"yellow",		"Yellow",		"ffff00"},
}

if core.get_modpath("mydye") then
	mypaint_tree_colors = {
	{"black",      	"Black",      		"000000"},
	{"blue",       	"Blue",       		"2000c9"},
	{"brown",     	"Brown",      		"954c05"},
	{"cyan",      	"Cyan",       		"01ffd8"},
	{"darkgreen", 	"Dark Green",  		"005b07"},
	{"darkgrey",  	"Dark Grey",   		"303030"},
	{"green",     	"Green",      		"61ff01"},
	{"grey",       	"Grey",       		"5b5b5b"},
	{"magenta",    	"Magenta",    		"ff05bb"},
	{"orange",     	"Orange",     		"ff8401"},
	{"pink",      	"Pink",       		"ff65b5"},
	{"red",        	"Red",        		"ff0000"},
	{"violet",     	"Violet",     		"ab23b0"},
	{"white",      	"White",      		"ffffff"},
	{"yellow",     	"Yellow",     		"e3ff00"},
	{"peachpuff",	"Peachpuff", 		"FFDAB9"},
	{"navy",		"Navy", 			"000080"},
	{"coral",		"Coral", 			"FF7F50"},
	{"khaki",		"Khaki", 			"F0E68C"},
	{"lime",		"Lime", 			"00FF00"},
	{"light_pink",	"Light Pink", 		"FFB6C1"},
	{"light_grey",	"Light Grey", 		"D3D3D3"},
	{"purple",		"Purple", 			"800080"},
	{"maroon",		"Maroon", 			"800000"},
	{"aquamarine",	"Aqua Marine", 		"7FFFD4"},
	{"chocolate",	"Chocolate", 		"D2691E"},
	{"crimson",		"Crimson", 			"DC143C"},
	{"olive",		"Olive", 			"808000"},
	{"white_smoke",	"White Smoke", 		"F5F5F5"},
	{"mistyrose",	"Misty Rose", 		"FFE4E1"},
	{"orchid",		"Orchid", 			"DA70D6"},
	}
end
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

