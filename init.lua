
-- Zombie by BlockMen

mobs:register_mob("zombie:zombie", {
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 3,
	hp_min = 12,
	hp_max = 35,
	armor = 150,
	collisionbox = {-0.25, -1, -0.3, 0.25, 0.75, 0.3},
	visual = "mesh",
	mesh = "creatures_mob.x",
	textures = {
		{"mobs_zombie.png"},
	},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_zombie.1",
		damage = "mobs_zombie_hit",
		attack = "mobs_zombie.3",
		death = "mobs_zombie_death",
	},
	walk_velocity = 0.75,
	run_velocity = 1.5,
	jump = true,
	floats = 0,
	view_range = 15,
	drops = {
		{name = "zombie:rotten_flesh",
		chance = 2, min = 3, max = 5,},
	},
	water_damage = 0,
	lava_damage = 5,
	light_damage = 2,
	animation = {
		speed_normal = 10,		speed_run = 15,
		stand_start = 0,		stand_end = 79,
		walk_start = 168,		walk_end = 188,
		run_start = 168,		run_end = 188,
		punch_start = 168,		punch_end = 188,
	},
})

mobs:spawn_specific(
--[[               name]] "zombie:zombie",
--[[              nodes]] {"group:stone", "group:soil", "group:sand"},
--[[          neighbors]] "air",
--[[          min_light]] 0,
--[[          max_light]] 5,
--[[           interval]] 10,
--[[             chance]] 3,
--[[active_object_count]] 1,
--[[         min_height]] -24000,
--[[         max_height]] 1000)

mobs:register_egg("zombie:zombie", "Zombie", "wool_cyan.png", 1)

minetest.register_craftitem("zombie:rotten_flesh", {
	description = "Rotten Flesh",
	inventory_image = "mobs_rotten_flesh.png",
	on_use = minetest.item_eat(1),
})
