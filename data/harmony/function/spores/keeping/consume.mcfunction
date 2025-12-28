# Executor: A player that just consumed Spores of Keeping
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/keeping/consume] "},{"translate":"harmony.spores.keeping"},{"text":" consumed by "},{"selector":"@s"}]


# Activate or extend Spores of Keeping
execute if score spores_of_keeping shroomhearth matches 1.. run function harmony:spores/keeping/extend
execute unless score spores_of_keeping shroomhearth matches 1.. run function harmony:spores/keeping/activate

# Play particles
particle minecraft:instant_effect{color: [0.78, 0.78, 0.78], scale: 2} ~ ~1 ~ 0.5 0.5 0.5 1 16

# Play sound
playsound minecraft:block.vault.open_shutter player @a ~ ~ ~ 1 1.35

# Grant advancement
advancement grant @s only harmony:spore_barer

# Reset advancement trigger
advancement revoke @s only harmony:consume_spores/keeping
