
local mypaint_stone_colors = {
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

