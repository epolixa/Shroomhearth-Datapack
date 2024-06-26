# Executes from the context of a player who is applying an Ender Tome to an item.
# This populates an array of enhanceable enchantments according to the item, from which a random one will be selected in the item modifer macro.

# This insane series of hard coded checks would not be necessary if we could iterate over the keys of the "levels" object in the enchantments item component
# Going to do it this way for now assuming one day we will be able to. Horrendous.

# Only leveled enchantments at their maximum level are considered "enhanceable".
# In the future we can consider allowing lower levels to be enhanced - see comments around sharpness for example.

# Enchantments are ordered by category (Vanilla, Runes), then by max level, then alphabetically.

# ___ MINECRAFT ENCHANTMENTS ___

# ___ MAX LEVEL 1

# Max level 1 enchantments will be omitted for now. May consider allowing them in future for shenanigans.

# Aqua Affinity
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:aqua_affinity":1}
#execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:aqua_affinity"

# Channeling
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:channeling":1}
#execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:channeling"

# Flame
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:flame":1}
#execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:flame"

# Infinity
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:infinity":1}
#execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:infinity"

# Mending
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:mending":1}
#execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:mending"

# Multishot
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:multishot":1}
#execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:multishot"

# Silk Touch
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:silk_touch":1}
#execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:silk_touch"


# ___ MAX LEVEL 2

# Fire Aspect
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:fire_aspect":2}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:fire_aspect"

# Frost Walker
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:frost_walker":2}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:frost_walker"

# Knockback
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:knockback":2}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:knockback"

# Punch
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:punch":2}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:punch"


# ___ MAX LEVEL 3

# Depth Strider
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:depth_strider":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:depth_strider"

# Fortune
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:fortune":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:fortune"

# Looting
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:looting":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:looting"

# Loyalty
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:loyalty":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:loyalty"

# Luck of the Sea
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:luck_of_the_sea":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:luck_of_the_sea"

# Lure
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:lure":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:lure"

# Quick Charge
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:quick_charge":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:quick_charge"

# Respiration
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:respiration":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:respiration"

# Riptide
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:riptide":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:riptide"

# Sweeping Edge
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:sweeping_edge":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:sweeping_edge"

# Thorns
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:thorns":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:thorns"

# Unbreaking
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:unbreaking":3}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:unbreaking"


# ___ MAX LEVEL 4

# Blast Protection
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:blast_protection":4}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:blast_protection"

# Feather Falling
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:feather_falling":4}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:feather_falling"

# Fire Protection
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:fire_protection":4}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:fire_protection"

# Piercing
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:piercing":4}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:piercing"

# Projectile Protection
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:projectile_protection":4}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:projectile_protection"

# Protection
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:protection":4}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:protection"


# ___ MAX LEVEL 5

# Bane of Arthropods
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:bane_of_arthropods":5}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:bane_of_arthropods"

# Efficiency
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:efficiency":5}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:efficiency"

# Impaling
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:impaling":5}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:impaling"

# Power
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:power":5}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:power"

# Sharpness
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:sharpness":1}
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:sharpness":5}
#execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:sharpness":2}
#execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:sharpness":3}
#execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:sharpness":4}
#execute unless score @s found_enhanceable_enchantment matches 1 store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:sharpness":5}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:sharpness"

# Smite
execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"minecraft:smite":5}
execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "minecraft:smite"



# ___ RUNES ___

# ___ MAX LEVEL 1

# Considering allowing runes to be enhanced in the future. They will remain ignored for now.

# Rune of Armor
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"runes:rune_of_armor":1}
#execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "runes:rune_of_armor"

# Rune of Force
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"runes:rune_of_knockback":1}
#execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "runes:rune_of_force"

# Rune of Gravity
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"runes:rune_of_gravity":1}
#execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "runes:rune_of_gravity"

# Rune of Haste
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"runes:rune_of_haste":1}
#execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "runes:rune_of_haste"

# Rune of Health
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"runes:rune_of_health":1}
#execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "runes:rune_of_health"

# Rune of Largeness
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"runes:rune_of_largeness":1}
#execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "runes:rune_of_largeness"

# Rune of Leaping
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"runes:rune_of_leaping":1}
#execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "runes:rune_of_leaping"

# Rune of Reach
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"runes:rune_of_reach":1}
#execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "runes:rune_of_reach"

# Rune of Smallness
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"runes:rune_of_smallness":1}
#execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "runes:rune_of_smallness"

# Rune of Stability
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"runes:rune_of_stability":1}
#execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "runes:rune_of_stability"

# Rune of Stepping
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"runes:rune_of_stepping":1}
#execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "runes:rune_of_stepping"

# Rune of Strength
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"runes:rune_of_strength":1}
#execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "runes:rune_of_strength"

# Rune of Swiftness
#execute store result score @s found_enhanceable_enchantment if data entity @s SelectedItem.components."minecraft:enchantments".levels{"runes:rune_of_swiftness":1}
#execute if score @s found_enhanceable_enchantment matches 1 run data modify storage ender_tome:ender_tome enhanceable_enchantments append value "runes:rune_of_swiftness"