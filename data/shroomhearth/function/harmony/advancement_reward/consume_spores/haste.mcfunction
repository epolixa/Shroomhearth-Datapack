# Executor: A player that just consumed Spores of Haste
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/advancement_reward/consume_spores/haste] "},{"translate":"harmony.spores.haste"},{"text":" consumed by "},{"selector":"@s"}]

# Activate or extend Spores of Haste
execute if score spores_of_haste shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/haste/extend
execute unless score spores_of_haste shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/haste/activate

# Play particles
particle minecraft:instant_effect{color: [0.85, 0.75, 0.26], scale: 2} ~ ~1 ~ 0.5 0.5 0.5 1 16

# Play sound
playsound minecraft:block.vault.open_shutter player @a ~ ~ ~ 1 1.35

# Grant advancement
advancement grant @s only shroomhearth:harmony/spore_barer

# Reset advancement trigger
advancement revoke @s only shroomhearth:harmony/consume_spores/haste
