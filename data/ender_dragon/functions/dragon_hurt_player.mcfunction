# revoke advancement
advancement revoke @s only ender_dragon:dragon_hurt_player

# play chomp sound
playsound minecraft:entity.phantom.bite hostile @a ~ ~ ~ 1 0.5

# apply effects
effect give @s slow_falling 1 0 true
effect give @s levitation 1 0 true
effect give @s slowness 1 4 true

# tag player
tag @s add remove_levitation

# small chance to start riding dragon
execute if predicate shroomhearth:random_chance_20 run ride @s mount @e[type=ender_dragon,limit=1,sort=nearest]

# remove levitation 1t later (only need it to cancel elytra)
schedule function ender_dragon:remove_levitation 1t