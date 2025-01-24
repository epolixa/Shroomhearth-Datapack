# set gear variants for mobs that meet the criteria

# custom model data codes:
# - pillager:        411
# - vindicator:      712
# - vex:             738
# - piglin:          416
# - piglin brute:    850
# - wither skeleton: 317

# pillager - soul crossbow
execute as @s[type=minecraft:pillager] if predicate relics:soul_crossbow run data modify entity @s HandItems[0].components."minecraft:item_model" set value "shroomhearth:soul_crossbow"

# vindicator - highland axe
execute as @s[type=minecraft:vindicator] if predicate relics:highland_axe run data modify entity @s HandItems[0].components."minecraft:item_model" set value "shroomhearth:highland_axe"

# vex - soul knife - extra line to modify HandDropChances
execute as @s[type=minecraft:vex] if predicate relics:soul_knife run function relics:modify_vex

# piglin with sword - broken sawblade
execute as @s[type=minecraft:piglin] if predicate relics:broken_sawblade run data modify entity @s HandItems[0].components."minecraft:item_model" set value "shroomhearth:broken_sawblade"

# piglin with crossbow - cog crossbow
execute as @s[type=minecraft:piglin] if predicate relics:cog_crossbow run data modify entity @s HandItems[0].components."minecraft:item_model" set value "shroomhearth:cog_crossbow"

# piglin brute - firebrand
execute as @s[type=minecraft:piglin_brute] if predicate relics:firebrand run data modify entity @s HandItems[0].components."minecraft:item_model" set value "shroomhearth:firebrand"

# wither skeleton - claymore
execute as @s[type=minecraft:wither_skeleton] if predicate relics:heartstealer run data modify entity @s HandItems[0].components."minecraft:item_model" set value "shroomhearth:heartstealer"

# set tag so not targeted again
tag @s add relic_checked