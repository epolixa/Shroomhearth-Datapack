# Executor: Player that is being bitten by the Omen Ender Dragon
# Position: The Omen Ender Dragon

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/dragon_bite_player] "},{"selector":"@s"},{"text":" was bitten by the Ender Dragon"}]


# play chomp sound
playsound minecraft:entity.phantom.bite hostile @a ~ ~ ~ 1 0.5

# apply effects to cancel elytra
effect give @s slow_falling 1 0 true
effect give @s levitation 1 0 true
effect give @s slowness 1 4 true

# tag player
tag @s add remove_levitation

# Chance for the dragon to snatch a bitten player
execute at @n[tag=omen_ender_dragon,predicate=shroomhearth:ender_dragon/dragon_can_snatch] run function shroomhearth:ender_dragon/dragon_snatch_player

# remove levitation 1t later (only need it to cancel elytra)
schedule function shroomhearth:ender_dragon/remove_levitation 1t