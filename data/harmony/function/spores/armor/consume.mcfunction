# Executor: A player that just consumed Spores of Armor
# Location: The player's current location

tellraw @a[tag=debug_harmony] [{"text":"[harmony:spores/armor/consume] "},{"translate":"harmony.spores.armor"},{"text":" consumed by "},{"selector":"@s"}]

# Activate or extend Spores of Armor
execute if score spores_of_armor shroomhearth.harmony matches 1.. run function harmony:spores/armor/extend
execute unless score spores_of_armor shroomhearth.harmony matches 1.. run function harmony:spores/armor/activate

# Play particles
particle minecraft:instant_effect{color: [0.56, 0.27, 0.93], scale: 2} ~ ~1 ~ 0.5 0.5 0.5 1 16

# Play sound
playsound minecraft:block.vault.open_shutter player @a ~ ~ ~ 1 1.4

# Grant advancement
advancement grant @s only harmony:spore_barer

# Reset advancement trigger
advancement revoke @s only harmony:consume_spores/armor