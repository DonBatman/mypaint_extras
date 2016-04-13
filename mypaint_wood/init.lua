
local mypaint_wood_colors = {
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
	"default:wood","default:acacia_wood","default:junglewood","default:aspen_wood","default:pine_wood",
}

for _, entry in ipairs(mypaint_wood_colors) do
	local color = entry[1]
	local desc = entry[2]
	local paint = "^[colorize:#"..entry[3]..":100"


-- Wood

minetest.register_node(":default:wood_" .. color, {
	description = desc .. " Wood",
	tiles = {"default_wood.png".. paint},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
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

