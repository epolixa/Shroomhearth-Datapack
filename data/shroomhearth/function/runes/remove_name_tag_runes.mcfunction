# Executor: An entity that should have their name tag rune attributes removed
# Position: The entity

tellraw @a[tag=debug_runes] [{"text":"[shroomhearth:runes/remove_name_tag_runes] "},{"selector":"@s"},{"text":" had their name tag runes removed"}]


# remove all name tag rune attributes
attribute @s minecraft:armor modifier remove shroomhearth:name_tag_rune_of_armor.armor
attribute @s minecraft:bounciness modifier remove shroomhearth:name_tag_rune_of_bounciness.bounciness
attribute @s minecraft:gravity modifier remove shroomhearth:name_tag_rune_of_gravity.gravity
attribute @s minecraft:fall_damage_multiplier modifier remove shroomhearth:name_tag_rune_of_gravity.fall_damage_multiplier
attribute @s minecraft:attack_speed modifier remove shroomhearth:name_tag_rune_of_haste.attack_speed
attribute @s minecraft:block_break_speed modifier remove shroomhearth:name_tag_rune_of_haste.block_break_speed
attribute @s minecraft:max_health modifier remove shroomhearth:name_tag_rune_of_health.max_health
attribute @s minecraft:attack_knockback modifier remove shroomhearth:name_tag_rune_of_knockback.attack_knockback
attribute @s minecraft:scale modifier remove shroomhearth:name_tag_rune_of_largeness.scale
attribute @s minecraft:safe_fall_distance modifier remove shroomhearth:name_tag_rune_of_leaping.safe_fall_distance
attribute @s minecraft:jump_strength modifier remove shroomhearth:name_tag_rune_of_leaping.jump_strength
attribute @s minecraft:friction_modifier modifier remove shroomhearth:name_tag_rune_of_lubricity.friction_modifier
attribute @s minecraft:block_interaction_range modifier remove shroomhearth:name_tag_rune_of_reach.block_interaction_range
attribute @s minecraft:entity_interaction_range modifier remove shroomhearth:name_tag_rune_of_reach.entity_interaction_range
attribute @s minecraft:oxygen_bonus modifier remove shroomhearth:name_tag_rune_of_respiration.oxygen_bonus
attribute @s minecraft:scale modifier remove shroomhearth:name_tag_rune_of_smallness.scale
attribute @s minecraft:knockback_resistance modifier remove shroomhearth:name_tag_rune_of_stability.knockback_resistance
attribute @s minecraft:step_height modifier remove shroomhearth:name_tag_rune_of_stepping.step_height
attribute @s minecraft:air_drag_modifier modifier remove shroomhearth:name_tag_rune_of_streamlining.air_drag_modifier
attribute @s minecraft:attack_damage modifier remove shroomhearth:name_tag_rune_of_strength.attack_damage
attribute @s minecraft:movement_speed modifier remove shroomhearth:name_tag_rune_of_swiftness.movement_speed
attribute @s minecraft:flying_speed modifier remove shroomhearth:name_tag_rune_of_swiftness.flying_speed

# remove name tag rune tags
tag @s remove name_tag_rune
tag @s remove name_tag_rune_of_armor
tag @s remove name_tag_rune_of_bounciness
tag @s remove name_tag_rune_of_gravity
tag @s remove name_tag_rune_of_haste
tag @s remove name_tag_rune_of_health
tag @s remove name_tag_rune_of_knockback
tag @s remove name_tag_rune_of_largeness
tag @s remove name_tag_rune_of_leaping
tag @s remove name_tag_rune_of_lubricity
tag @s remove name_tag_rune_of_reach
tag @s remove name_tag_rune_of_respiration
tag @s remove name_tag_rune_of_smallness
tag @s remove name_tag_rune_of_stability
tag @s remove name_tag_rune_of_stepping
tag @s remove name_tag_rune_of_streamlining
tag @s remove name_tag_rune_of_strength
tag @s remove name_tag_rune_of_swiftness

# remove raycast tag
tag @s remove name_tag_raycast_target