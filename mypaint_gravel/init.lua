
local mypaint_gravel_colors = {
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
	"default:gravel","mycobble:desert_gravel"
}

for _, entry in ipairs(mypaint_gravel_colors) do
	local color = entry[1]
	local desc = entry[2]
	local paint = "^[colorize:"..entry[3]


-- gravel

minetest.register_node(":default:gravel_" .. color, {
	description = desc .. " Gravel",
	tiles = {"default_gravel.png".. paint},
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 0},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_gravel_footstep", gain = 0.5},
		dug = {name = "default_gravel_footstep", gain = 1.0},
		})
})

if minetest.get_modpath("mycobble") then
	minetest.register_node(":mycobble:desert_gravel_" .. color, {
		description = desc .. " Desert Gravel",
		tiles = {"default_gravel.png^[colorize:#8A2908:120".. paint},
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2, not_in_creative_inventory = 0},
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

