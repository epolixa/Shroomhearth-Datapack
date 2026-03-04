# Executor: A player that just consumed Spores of Rushing
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/advancement_reward/consume_spores/rushing] "},{"translate":"harmony.spores.rushing"},{"text":" consumed by "},{"selector":"@s"}]


# Activate or extend Spores of Rushing
execute if score spores_of_rushing shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/rushing/extend
execute unless score spores_of_rushing shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/rushing/activate

# Play particles
particle minecraft:instant_effect{color: [0.7, 0.56, 0.95], scale: 2} ~ ~1 ~ 0.5 0.5 0.5 1 16

# Play sound
playsound minecraft:block.vault.open_shutter player @a ~ ~ ~ 1 1.35

# Grant advancement
advancement grant @s only shroomhearth:harmony/spore_barer

# Reset advancement trigger
advancement revoke @s only shroomhearth:harmony/consume_spores/rushing
