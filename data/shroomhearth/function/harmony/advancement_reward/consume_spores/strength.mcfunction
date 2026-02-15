# Executor: A player that just consumed Spores of Strength
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/advancement_reward/consume_spores/strength] "},{"translate":"harmony.spores.strength"},{"text":" consumed by "},{"selector":"@s"}]


# Activate or extend Spores of Strength
execute if score spores_of_strength shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/strength/extend
execute unless score spores_of_strength shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/strength/activate

# Play particles
particle minecraft:instant_effect{color: [1, 0.78, 0], scale: 2} ~ ~1 ~ 0.5 0.5 0.5 1 16

# Play sound
playsound minecraft:block.vault.open_shutter player @a ~ ~ ~ 1 1.4

# Grant advancement
advancement grant @s only shroomhearth:harmony/spore_barer

# Reset advancement trigger
advancement revoke @s only shroomhearth:harmony/consume_spores/strength