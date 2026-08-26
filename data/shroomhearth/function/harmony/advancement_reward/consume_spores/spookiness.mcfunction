# Executor: A player that just consumed Spores of Spookiness
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/advancement_reward/consume_spores/spookiness] "},{"translate":"event.shroomhearth.spores_of_spookiness"},{"text":" consumed by "},{"selector":"@s"}]

# Activate or extend Spores of Spookiness
execute if score spores_of_spookiness shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/spookiness/extend
execute unless score spores_of_spookiness shroomhearth.harmony matches 1.. run function shroomhearth:harmony/spores/spookiness/activate

# Play particles
particle minecraft:instant_effect ~ ~1 ~ 0.5 0.5 0.5 1 16

# Play sound
playsound minecraft:block.vault.open_shutter player @a ~ ~ ~ 1 1.35

# Grant advancement
advancement grant @s only shroomhearth:harmony/spore_barer

# Reset advancement trigger
advancement revoke @s only shroomhearth:harmony/consume_spores/spookiness
