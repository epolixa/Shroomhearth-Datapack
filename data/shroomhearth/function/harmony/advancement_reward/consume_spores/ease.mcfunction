# Executor: A player that just consumed Spores of Ease
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/advancement_reward/consume_spores/ease] "},{"translate":"harmony.spores.ease"},{"text":" consumed by "},{"selector":"@s"}]


# Activate or extend Spores of Ease
execute if score spores_of_ease shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/ease/extend
execute unless score spores_of_ease shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/ease/activate

# Play particles
particle minecraft:instant_effect{color: [0.71, 0.86, 0.38], scale: 2} ~ ~1 ~ 0.5 0.5 0.5 1 16

# Play sound
playsound minecraft:block.vault.open_shutter player @a ~ ~ ~ 1 1.35

# Grant advancement
advancement grant @s only shroomhearth:harmony/spore_barer

# Reset advancement trigger
advancement revoke @s only shroomhearth:harmony/consume_spores/ease
