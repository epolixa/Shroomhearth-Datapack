# This insane series of hard coded checks would not be necessary if we could iterate over the keys of the "levels" object in the enchantments item component
# Going to do it this way for now assuming one day we will be able to.

# ___ MINECRAFT ENCHANTMENTS ___

# Sharpness
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:sharpness":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:sharpness":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:sharpness":3}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:sharpness":4}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:sharpness":5}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:sharpness"

# Knockback
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:knockback":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:knockback":2}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:knockback"



# ___ RUNES ___

# Rune of Swiftness
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"ominous_runes:rune_of_swiftness":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "ominous_runes:rune_of_swiftness"