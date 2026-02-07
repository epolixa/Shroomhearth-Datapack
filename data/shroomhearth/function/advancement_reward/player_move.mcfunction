# Executor: A player who has moved enough to trigger the player_move advancement
# Position: The player entity

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:advancement_reward/player_move] "},{"selector":"@s"},{"text":" moved"}]


# Reset tracking scores
scoreboard players reset @s aviate_one_cm
scoreboard players reset @s boat_one_cm
scoreboard players reset @s climb_one_cm
scoreboard players reset @s crouch_one_cm
scoreboard players reset @s fall_one_cm
scoreboard players reset @s fly_one_cm
scoreboard players reset @s horse_one_cm
scoreboard players reset @s minecart_one_cm
scoreboard players reset @s pig_one_cm
scoreboard players reset @s sprint_one_cm
scoreboard players reset @s strider_one_cm
scoreboard players reset @s swim_one_cm
scoreboard players reset @s walk_one_cm
scoreboard players reset @s walk_on_water_one_cm
scoreboard players reset @s walk_under_water_one_cm 

# Tag the player as moved so that their echo tracker can update position data on next pulse.
tag @s[gamemode=!spectator] add moved

# Revoke advancement
advancement revoke @s only shroomhearth:player_move