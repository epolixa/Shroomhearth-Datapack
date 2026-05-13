# Executes from the context of a newly summoned thrall mob

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/powers/summon/apply_random_attribute] Attempting to apply random attribute to summoned "},{"selector":"@s"}]


# Apply a random rune attribute
execute store result score random shroomhearth run random value 0..7
execute if score random shroomhearth matches 0 run attribute @s minecraft:armor modifier add shroomhearth:rune_of_armor 4 add_value
execute if score random shroomhearth matches 1 run attribute @s minecraft:max_health modifier add shroomhearth:rune_of_health 4 add_value
execute if score random shroomhearth matches 2 run attribute @s minecraft:attack_knockback modifier add shroomhearth:rune_of_knockback 1 add_value
execute if score random shroomhearth matches 3 run attribute @s minecraft:knockback_resistance modifier add shroomhearth:rune_of_stability 0.1 add_value
execute if score random shroomhearth matches 4 run attribute @s minecraft:scale modifier add shroomhearth:rune_of_largeness 0.5 add_multiplied_total
execute if score random shroomhearth matches 5 run attribute @s minecraft:scale modifier add shroomhearth:rune_of_smallness -0.5 add_multiplied_total
execute if score random shroomhearth matches 6 run attribute @s minecraft:attack_damage modifier add shroomhearth:rune_of_strength 3 add_value
execute if score random shroomhearth matches 7 run attribute @s minecraft:movement_speed modifier add shroomhearth:rune_of_swiftness.movement_speed 0.2 add_multiplied_base
execute if score random shroomhearth matches 7 run attribute @s minecraft:flying_speed modifier add shroomhearth:rune_of_swiftness.flying_speed 0.2 add_multiplied_base
scoreboard players set random shroomhearth -1

# Tag the mob to indicate it has had a random attribute applied
tag @s add has_ominous_ender_dragon_rune_attribute

# Consume an extra sequence score
scoreboard players remove summon_sequence shroomhearth.ender_dragon 1