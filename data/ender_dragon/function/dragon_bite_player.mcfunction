# Executor: Player that is being bitten by the Omen Ender Dragon
# Position: The Player

say @a dragon bite player

# play chomp sound
playsound minecraft:entity.phantom.bite hostile @a ~ ~ ~ 1 0.5

# apply effects
effect give @s slow_falling 1 0 true
effect give @s levitation 1 0 true
effect give @s slowness 1 4 true

# tag player
tag @s add remove_levitation

# Chance for the dragon to snatch a bitten player
execute as @n[tag=omen_ender_dragon,predicate=ender_dragon:dragon_can_snatch] as @p run function ender_dragon:dragon_snatch_player

# remove levitation 1t later (only need it to cancel elytra)
schedule function ender_dragon:remove_levitation 1t