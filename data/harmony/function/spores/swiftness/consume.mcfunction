# Executor: A player that just consumed Spores of Swiftness
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/swiftness/consume] "},{"translate":"harmony.spores.swiftness"},{"text":" consumed by "},{"selector":"@s"}]


# Activate or extend Spores of Swiftness
execute if score spores_of_swiftness shroomhearth.harmony matches 1.. run function harmony:spores/swiftness/extend
execute unless score spores_of_swiftness shroomhearth.harmony matches 1.. run function harmony:spores/swiftness/activate

# Play particles
particle minecraft:instant_effect{color: [0.2, 0.92, 1], scale: 2} ~ ~1 ~ 0.5 0.5 0.5 1 16

# Play sound
playsound minecraft:block.vault.open_shutter player @a ~ ~ ~ 1 1.35

# Grant advancement
advancement grant @s only harmony:spore_barer

# Reset advancement trigger
advancement revoke @s only harmony:consume_spores/swiftness
