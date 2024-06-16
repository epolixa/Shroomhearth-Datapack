# This insane series of hard coded checks would not be necessary if we could iterate over the keys of the "levels" object in the enchantments item component
# Going to do it this way for now assuming one day we will be able to. Horrendous.

# Enchantments are ordered by category, then by max level, then alphabetically.

# ___ MINECRAFT ENCHANTMENTS ___

# ___ MAX LEVEL 1

# ___ MAX LEVEL 2

# ___ MAX LEVEL 3

# ___ MAX LEVEL 4

# ___ MAX LEVEL 5

# Aqua Affinity
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:aqua_affinity":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:aqua_affinity"

# Bane of Arthropods
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:bane_of_arthropods":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:bane_of_arthropods":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:bane_of_arthropods":3} 
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:bane_of_arthropods":4}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:bane_of_arthropods":5}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:bane_of_arthropods"

# Blast Protection
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:blast_protection":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:blast_protection":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:blast_protection":3}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:blast_protection":4}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:blast_protection"

# Channeling
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:channeling":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:channeling"

# Depth Strider
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:depth_strider":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:depth_strider":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:depth_strider":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:depth_strider"

# Efficiency
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:efficiency":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:efficiency":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:efficiency":3}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:efficiency":4}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:efficiency":5}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:efficiency"

# Feather Falling
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:feather_falling":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:feather_falling":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:feather_falling":3}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:feather_falling":4}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:feather_falling"

# Fire Aspect
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:fire_aspect":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:fire_aspect":2}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:fire_aspect"

# Fire Protection
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:fire_protection":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:fire_protection":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:fire_protection":3}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:fire_protection":4}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:fire_protection"

# Flame
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:flame":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:flame"

# Fortune
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:fortune":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:fortune":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:fortune":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:fortune"

# Frost Walker
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:frost_walker":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:frost_walker":2}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:frost_walker"

# Impaling
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:impaling":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:impaling":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:impaling":3}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:impaling":4}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:impaling":5}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:impaling"

# Infinity
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:infinity":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:infinity"

# Knockback
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:knockback":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:knockback":2}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:knockback"

# Looting
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:looting":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:looting":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:looting":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:looting"

# Loyalty
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:loyalty":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:loyalty":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:loyalty":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:loyalty"

# Luck of the Sea
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:luck_of_the_sea":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:luck_of_the_sea":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:luck_of_the_sea":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:luck_of_the_sea"

# Lure
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:lure":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:lure":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:lure":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:lure"

# Mending
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:mending":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:mending"

# Multishot
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:multishot":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:multishot"

# Piercing
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:piercing":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:piercing":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:piercing":3}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:piercing":4}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:piercing"

# Power
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:power":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:power":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:power":3}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:power":4}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:power":5}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:power"

# Projectile Protection
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:projectile_protection":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:projectile_protection":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:projectile_protection":3}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:projectile_protection":4}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:projectile_protection"

# Protection
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:protection":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:protection":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:protection":3}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:protection":4}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:protection"

# Punch
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:punch":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:punch":2}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:punch"

# Quick Charge
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:quick_charge":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:quick_charge":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:quick_charge":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:quick_charge"

# Respiration
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:respiration":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:respiration":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:respiration":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:respiration"

# Riptide
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:riptide":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:riptide":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:riptide":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:riptide"

# Sharpness
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:sharpness":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:sharpness":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:sharpness":3}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:sharpness":4}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:sharpness":5}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:sharpness"

# Silk Touch
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:silk_touch":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:silk_touch"

# Smite
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:smite":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:smite":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:smite":3}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:smite":4}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:smite":5}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:smite"

# Sweeping Edge
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:sweeping_edge":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:sweeping_edge":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:sweeping_edge":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:sweeping_edge"

# Thorns
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:thorns":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:thorns":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:thorns":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:thorns"

# Unbreaking
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:unbreaking":1}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:unbreaking":2}
execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:unbreaking":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:unbreaking"



# ___ RUNES ___

# ___ MAX LEVEL 1

# Rune of Armor
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"ominous_runes:rune_of_armor":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "ominous_runes:rune_of_armor"

# Rune of Force
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"ominous_runes:rune_of_force":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "ominous_runes:rune_of_force"

# Rune of Gravity
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"ominous_runes:rune_of_gravity":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "ominous_runes:rune_of_gravity"

# Rune of Haste
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"ominous_runes:rune_of_haste":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "ominous_runes:rune_of_haste"

# Rune of Health
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"ominous_runes:rune_of_health":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "ominous_runes:rune_of_health"

# Rune of Largeness
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"ominous_runes:rune_of_largeness":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "ominous_runes:rune_of_largeness"

# Rune of Leaping
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"ominous_runes:rune_of_leaping":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "ominous_runes:rune_of_leaping"

# Rune of Reach
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"ominous_runes:rune_of_reach":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "ominous_runes:rune_of_reach"

# Rune of Smallness
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"ominous_runes:rune_of_smallness":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "ominous_runes:rune_of_smallness"

# Rune of Stability
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"ominous_runes:rune_of_stability":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "ominous_runes:rune_of_stability"

# Rune of Stepping
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"ominous_runes:rune_of_stepping":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "ominous_runes:rune_of_stepping"

# Rune of Strength
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"ominous_runes:rune_of_strength":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "ominous_runes:rune_of_strength"

# Rune of Swiftness
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"ominous_runes:rune_of_swiftness":1}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "ominous_runes:rune_of_swiftness"