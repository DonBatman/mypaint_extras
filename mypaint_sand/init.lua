
local mypaint_sand_colors = {
		{"red",			"Red", 			"ff0000"},
 		{"green",		"Green", 		"00ff00"},
 		{"white",		"White", 		"ffffff"},
		{"black",		"Black",		"000000"},
		{"blue",		"Blue",			"0000ff"},
		{"brown",		"Brown",		"190B07"},
		{"cyan",		"Cyan",			"00ffff"},
		{"darkgreen",	"Dark Green",	"005000"},
		{"darkgery",	"Dark Grey",	"1C1C1C"},
		{"grey",		"Grey",			"848484"},
		{"magenta",		"Magenta",		"ff00ff"},
		{"orange",		"Orange",		"ff7700"},
		{"pink",		"Pink",			"FE2E9A"},
		{"violet",		"Violet",		"7f007f"},
		{"yellow",		"Yellow",		"ffff00"},
}

local paintables = {
	"default:sand","default:desert_sand","default:sandstone","default:sandstonebrick"
}

for _, entry in ipairs(mypaint_sand_colors) do
	local color = entry[1]
	local desc = entry[2]
	local paint = "^[colorize:#"..entry[3]..":100"


-- Sand
minetest.register_node(":default:sand_" .. color, {
	description = desc .. " Sand",
	tiles = {"default_sand.png".. paint},
	groups = {crumbly = 3, falling_node = 1, sand = 1,cracky = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_sand_defaults(),
})

-- Desert Sand
minetest.register_node(":default:desert_sand_" .. color, {
	description = desc .. " Desert Sand",
	tiles = {"default_desert_sand.png".. paint},
	groups = {crumbly = 3, falling_node = 1, sand = 1, not_in_creative_inventory = 1},
	sounds = default.node_sound_sand_defaults(),
})

-- Sandstone
minetest.register_node(":default:sandstone_" .. color, {
	description = desc .. " Sandstone",
	tiles = {"default_sandstone.png".. paint},
	groups = {crumbly = 2, cracky = 3, not_in_creative_inventory = 1},
	sounds = default.node_sound_sand_defaults(),
})

-- Sandstone Brick
minetest.register_node(":default:sandstonebrick_" .. color, {
	description = desc .. " Sandstone Brick",
	tiles = {"default_sandstone_brick.png".. paint},
	groups = {crumbly = 2, cracky = 3, not_in_creative_inventory = 1},
	sounds = default.node_sound_sand_defaults(),
})



end

local colors = {}
for _, entry in ipairs(mypaint_sand_colors) do
	table.insert(colors, entry[1])
end
	mypaint.register(paintables, colors)

