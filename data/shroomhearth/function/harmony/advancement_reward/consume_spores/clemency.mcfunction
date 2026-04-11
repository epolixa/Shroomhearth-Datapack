# Executor: A player that just consumed Spores of Clemency
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/advancement_reward/consume_spores/clemency] "},{"translate":"event.shroomhearth.spores_of_clemency"},{"text":" consumed by "},{"selector":"@s"}]


# Activate or extend Spores of Clemency
execute if score spores_of_clemency shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/clemency/extend
execute unless score spores_of_clemency shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/clemency/activate

# Play particles
particle minecraft:instant_effect{color: [0.47, 0.65, 1], scale: 2} ~ ~1 ~ 0.5 0.5 0.5 1 16

# Play sound
playsound minecraft:block.vault.open_shutter player @a ~ ~ ~ 1 1.4

# Grant advancement
advancement grant @s only shroomhearth:harmony/spore_barer

# Reset advancement trigger
advancement revoke @s only shroomhearth:harmony/consume_spores/clemency