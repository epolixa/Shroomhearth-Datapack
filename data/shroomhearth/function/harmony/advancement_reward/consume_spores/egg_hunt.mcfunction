# Executor: A player that just consumed Spores of Egg Hunt
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/advancement_reward/consume_spores/egg_hunt] "},{"translate":"harmony.spores.egg_hunt"},{"text":" consumed by "},{"selector":"@s"}]


# Activate or extend Spores of Egg Hunt
execute if score spores_of_egg_hunt shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/egg_hunt/extend
execute unless score spores_of_egg_hunt shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/egg_hunt/activate

# Play particles
particle minecraft:instant_effect{color: [0.63, 0.45, 0.3], scale: 2} ~ ~1 ~ 0.5 0.5 0.5 1 16

# Play sound
playsound minecraft:block.vault.open_shutter player @a ~ ~ ~ 1 1.35

# Grant advancement
advancement grant @s only shroomhearth:harmony/spore_barer

# Reset advancement trigger
advancement revoke @s only shroomhearth:harmony/consume_spores/egg_hunt
