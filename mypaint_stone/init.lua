
local mypaint_stone_colors = {
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
	mypaint_stone_colors = {
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
	"default:cobble","default:desert_cobble","default:mossycobble",
	"default:stone","default:desert_stone",
	"default:stonebrick","default:desert_stonebrick"
}

for _, entry in ipairs(mypaint_stone_colors) do
	local color = entry[1]
	local desc = entry[2]
	local paint = "^[colorize:#"..entry[3]..":100"
	local nici = entry[4]

-- Cobble
minetest.register_node(":default:cobble_" .. color, {
	description = desc .. " Cobble",
	tiles = {"default_cobble.png".. paint},
	groups = {cracky = 3, stone = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_stone_defaults(),
})

-- Desert Cobble
minetest.register_node(":default:desert_cobble_" .. color, {
	description = desc .. " Desert Cobble",
	tiles = {"default_desert_cobble.png".. paint},
	groups = {cracky = 3, stone = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_stone_defaults(),
})

-- Mossy Cobble
minetest.register_node(":default:mossycobble_" .. color, {
	description = desc .. "Mossy Cobble",
	tiles = {"default_mossycobble.png".. paint},
	groups = {cracky = 3, stone = 1, not_in_creative_inventory = 1},
	sounds = default.node_sound_stone_defaults(),
})

-- Stone
minetest.register_node(":default:stone_" .. color, {
	description = desc .. " Stone",
	tiles = {"default_stone.png".. paint},
	groups = {cracky = 3, stone = 1, not_in_creative_inventory = 1},
	sounds = default.node_sound_sand_defaults(),
})

-- Desert Stone
minetest.register_node(":default:desert_stone_" .. color, {
	description = desc .. " Desert Stone",
	tiles = {"default_desert_stone.png".. paint},
	groups = {cracky = 3, stone = 1, not_in_creative_inventory = 1},
	sounds = default.node_sound_sand_defaults(),
})

-- Stone Brick
minetest.register_node(":default:stonebrick_" .. color, {
	description = desc .. " Stone Brick",
	tiles = {"default_stone_brick.png".. paint},
	groups = {cracky = 2, stone = 1, not_in_creative_inventory = 1},
	sounds = default.node_sound_sand_defaults(),
})

-- Desert Stone Brick
minetest.register_node(":default:desert_stonebrick_" .. color, {
	description = desc .. " Desert Stone Brick",
	tiles = {"default_desert_stone_brick.png".. paint},
	groups = {cracky = 2, stone = 1, not_in_creative_inventory = 1},
	sounds = default.node_sound_sand_defaults(),
})


end

local colors = {}
for _, entry in ipairs(mypaint_stone_colors) do
	table.insert(colors, entry[1])
end
	mypaint.register(paintables, colors)

