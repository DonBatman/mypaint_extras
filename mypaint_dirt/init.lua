
local mypaint_dirt_colors = {
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
	"default:dirt","default:dirt_with_grass","default:dirt_with_dry_grass","default:dirt_with_snow"
}

for _, entry in ipairs(mypaint_dirt_colors) do
	local color = entry[1]
	local desc = entry[2]
	local paint = "^[colorize:#"..entry[3]..":100"

-- Dirt
minetest.register_node(":default:dirt_" .. color, {
	description = desc .. " Dirt",
	tiles = {"default_dirt.png".. paint},
	groups = {crumbly = 3, soil = 1, not_in_creative_inventory = 1},
	sounds = default.node_sound_dirt_defaults(),
})

-- Dirt with Grass
minetest.register_node(":default:dirt_with_grass_" .. color, {
	description = desc .. " Dirt with Grass",
	tiles = {"default_grass.png"..paint, "default_dirt.png"..paint,
		{name = "default_dirt.png^default_grass_side.png"..paint,
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, not_in_creative_inventory = 1},
	sounds = default.node_sound_dirt_defaults(),
})

-- Dirt with Dry Grass
minetest.register_node(":default:dirt_with_dry_grass_" .. color, {
	description = desc .. " Dirt with Dry Grass",
	tiles = {"default_dry_grass.png"..paint, "default_dirt.png"..paint,
		{name = "default_dirt.png^default_dry_grass_side.png"..paint,
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, not_in_creative_inventory = 1},
	sounds = default.node_sound_dirt_defaults(),
})

-- Dirt with Snow
minetest.register_node(":default:dirt_with_snow_" .. color, {
	description = desc .. " Dirt with Snow",
	tiles = {"default_snow.png"..paint, "default_dirt.png"..paint,
		{name = "default_dirt.png^default_snow_side.png"..paint,
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, not_in_creative_inventory = 1},
	sounds = default.node_sound_dirt_defaults(),
})


end

local colors = {}
for _, entry in ipairs(mypaint_dirt_colors) do
	table.insert(colors, entry[1])
end
	mypaint.register(paintables, colors)

