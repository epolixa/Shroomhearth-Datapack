# revoke advancement
advancement revoke @s only boss_fight:dragon/dragon_hit_player

# play chomp sound
playsound minecraft:entity.phantom.bite hostile @a ~ ~ ~ 1 0.6

# apply effects
effect give @s slow_falling 1 0 true
effect give @s levitation 1 0 true
effect give @s slowness 1 4 true

# tag player
tag @s add remove_levitation

# remove levitation 1t later (only need it to cancel elytra)
schedule function boss_fight:dragon/remove_levitation 1t