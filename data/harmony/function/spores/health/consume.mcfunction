# Executor: A player that just consumed Spores of Health
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/health/consume] "},{"translate":"harmony.spores.health"},{"text":" consumed by "},{"selector":"@s"}]

# Activate or extend Spores of Health
execute if score spores_of_health shroomhearth.harmony matches 1.. run function harmony:spores/health/extend
execute unless score spores_of_health shroomhearth.harmony matches 1.. run function harmony:spores/health/activate

# Play particles
particle minecraft:instant_effect{color: [0.97, 0.49, 0.14], scale: 2} ~ ~1 ~ 0.5 0.5 0.5 1 16

# Play sound
playsound minecraft:block.vault.open_shutter player @a ~ ~ ~ 1 1.4

# Grant advancement
advancement grant @s only harmony:spore_barer

# Reset advancement trigger
advancement revoke @s only harmony:consume_spores/health