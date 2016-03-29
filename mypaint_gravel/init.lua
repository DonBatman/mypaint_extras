
local mypaint_gravel_colors = {
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
	"default:gravel","mycobble:desert_gravel"
}

for _, entry in ipairs(mypaint_gravel_colors) do
	local color = entry[1]
	local desc = entry[2]
	local paint = "^[colorize:#"..entry[3]..":100"


-- gravel

minetest.register_node(":default:gravel_" .. color, {
	description = desc .. " Gravel",
	tiles = {"default_gravel.png".. paint},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_gravel_footstep", gain = 0.5},
		dug = {name = "default_gravel_footstep", gain = 1.0},
		})
})

if minetest.get_modpath("mycobble") then
	minetest.register_node(":mycobble:desert_gravel_" .. color, {
		description = desc .. " Desert Gravel",
		tiles = {"default_gravel.png^[colorize:#8A2908:120".. paint},
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
		sounds = default.node_sound_dirt_defaults({
				footstep = {name = "default_gravel_footstep", gain = 0.5},
				dug = {name = "default_gravel_footstep", gain = 1.0}
				})
	})
end

end

local colors = {}
for _, entry in ipairs(mypaint_gravel_colors) do
	table.insert(colors, entry[1])
end
	mypaint.register(paintables, colors)

