# Executor: A player that needs to reset their movement scores
# Position: The player entity

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:reset_move_one_cm_scores] "},{"text":" movement scores reset for "},{"selector":"@s"}]


# Reset movement tracking scores
scoreboard players reset @s aviate_one_cm
scoreboard players reset @s boat_one_cm
scoreboard players reset @s climb_one_cm
scoreboard players reset @s crouch_one_cm
scoreboard players reset @s fall_one_cm
scoreboard players reset @s fly_one_cm
scoreboard players reset @s happy_ghast_one_cm
scoreboard players reset @s horse_one_cm
scoreboard players reset @s minecart_one_cm
scoreboard players reset @s nautilus_one_cm
scoreboard players reset @s pig_one_cm
scoreboard players reset @s sprint_one_cm
scoreboard players reset @s strider_one_cm
scoreboard players reset @s swim_one_cm
scoreboard players reset @s walk_one_cm
scoreboard players reset @s walk_on_water_one_cm
scoreboard players reset @s walk_under_water_one_cm