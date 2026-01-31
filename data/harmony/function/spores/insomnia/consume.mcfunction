# Executor: A player that just consumed Spores of Insomnia
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/insomnia/consume] "},{"translate":"harmony.spores.insomnia"},{"text":" consumed by "},{"selector":"@s"}]


# Activate or extend Spores of Insomnia
execute if score spores_of_insomnia shroomhearth.harmony matches 1.. run function harmony:spores/insomnia/extend
execute unless score spores_of_insomnia shroomhearth.harmony matches 1.. run function harmony:spores/insomnia/activate

# Play particles
particle minecraft:instant_effect{color: [0.31, 0.38, 0.64], scale: 2} ~ ~1 ~ 0.5 0.5 0.5 1 16

# Play sound
playsound minecraft:block.vault.open_shutter player @a ~ ~ ~ 1 1.35

# Grant advancement
advancement grant @s only harmony:spore_barer

# Reset advancement trigger
advancement revoke @s only harmony:consume_spores/insomnia
