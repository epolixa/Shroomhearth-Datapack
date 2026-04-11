# Executor: Player that is being bitten by the Omen Ender Dragon
# Position: The Omen Ender Dragon

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/dragon_bite_player] "},{"selector":"@s"},{"text":" was bitten by the Ender Dragon"}]


# Play chomp sound
playsound minecraft:entity.phantom.bite hostile @a ~ ~ ~ 1 0.5

# Cancel elytra flight
function shroomhearth:advancement_reward/cancel_elytra

# Apply additional effects
effect give @s slow_falling 1 0 true
effect give @s slowness 1 4 true

# Chance for the dragon to snatch a bitten player
execute at @n[tag=omen_ender_dragon,predicate=shroomhearth:ender_dragon/dragon_can_snatch] run function shroomhearth:ender_dragon/dragon_snatch_player