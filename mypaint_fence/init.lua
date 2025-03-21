
local mypaint_fence_colors = {
		{"red",			"Red", 			"ff0000"},
 		{"green",		"Green", 		"00ff00"},
 		{"white",		"White", 		"ffffff"},
		{"black",		"Black",		"000000"},
		{"blue",		"Blue",			"0000ff"},
		{"brown",		"Brown",		"190B07"},
		{"cyan",		"Cyan",			"00ffff"},
		{"darkgreen",		"Dark Green",		"005000"},
		{"darkgrey",		"Dark Grey",		"1C1C1C"},
		{"grey",		"Grey",			"848484"},
		{"magenta",		"Magenta",		"ff00ff"},
		{"orange",		"Orange",		"ff7700"},
		{"pink",		"Pink",			"FE2E9A"},
		{"violet",		"Violet",		"7f007f"},
		{"yellow",		"Yellow",		"ffff00"},
}

local paintables = {
	"default:fence_wood","default:fence_acacia_wood","default:fence_junglewood","default:fence_aspen_wood","default:fence_pine_wood",
	"doors:gate_pine_wood_closed","doors:gate_pine_wood_open","doors:gate_pine_wood"
}

for _, entry in ipairs(mypaint_fence_colors) do
	local color = entry[1]
	local desc = entry[2]
	local paint = "^[colorize:#"..entry[3]..":100"


-- Wood Fence

default.register_fence(":default:fence_wood_" .. color, {
	description = desc .. " Wooden Fence",
	texture = "default_fence_wood.png".. paint,
	material = "default:fence_wood_" .. color,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})
doors.register_fencegate(":doors:gate_wood_" .. color, {
	description = desc .. " Wooden Fence Gate",
	texture = "default_wood.png".. paint,
	material = "default:fence_wood_" .. color,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})

-- Acacia Fence
default.register_fence(":default:fence_acacia_wood_" .. color, {
	description = desc .. " Acacia Fence",
	texture = "default_fence_acacia_wood.png".. paint,
	material = "default:fence_acacia_wood_" .. color,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})
doors.register_fencegate(":doors:gate_acacia_wood_" .. color, {
	description = desc .. " Acacia Fence Gate",
	texture = "default_acacia_wood.png".. paint,
	material = "default:fence_acacia_wood_" .. color,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})

-- Jungle Fence
default.register_fence(":default:fence_junglewood_" .. color, {
	description = desc .. " Junglewood Fence",
	texture = "default_fence_junglewood.png".. paint,
	material = "default:fence_junglewood_" .. color,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})
doors.register_fencegate(":doors:gate_junglewood_" .. color, {
	description = desc .. " Junglewood Fence Gate",
	texture = "default_junglewood.png".. paint,
	material = "default:fence_junglewood_" .. color,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})

-- Aspen Fence
default.register_fence(":default:fence_aspen_wood_" .. color, {
	description = desc .. " Aspen Fence",
	texture = "default_fence_aspen_wood.png".. paint,
	material = "default:fence_aspen_wood_" .. color,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})
doors.register_fencegate(":doors:gate_aspen_wood_" .. color, {
	description = desc .. " Aspen Fence Gate",
	texture = "default_aspen_wood.png".. paint,
	material = "default:fence_aspen_wood_" .. color,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})

-- Pine Fence
default.register_fence(":default:fence_pine_wood_" .. color, {
	description = desc .. " Pine Fence",
	texture = "default_fence_pine_wood.png".. paint,
	material = "default:fence_pine_wood_" .. color,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})
doors.register_fencegate(":doors:gate_pine_wood_" .. color, {
	description = desc .. " Pine Fence Gate",
	texture = "default_pine_wood.png".. paint,
	material = "default:fence_pine_wood_" .. color,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_wood_defaults(),
})

end

local colors = {}
for _, entry in ipairs(mypaint_fence_colors) do
	table.insert(colors, entry[1])
end
	mypaint.register(paintables, colors)

