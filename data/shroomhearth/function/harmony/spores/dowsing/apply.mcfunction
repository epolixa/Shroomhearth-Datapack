# Executor: A Harmony Cap interaction entity that should have Spores of Dowsing applied
# Location: Root

tellraw @a[tag=debug_harmony] [{"text":"[shroomhearth:harmony/spores/dowsing/apply] applying spores_of_dowsing armor stand to "},{"selector":"@s"}]


# Create an Armor Stand to transmit waypoint
summon minecraft:armor_stand ~ ~ ~ {\
Tags: ["harmony_cap","harmony_cap_armor_stand","new_harmony_cap_armor_stand","spores_of_dowsing"], \
attributes: [{id:"minecraft:waypoint_transmit_range",base:64}], \
locator_bar_icon: {color: 16777215, style: "shroomhearth:harmony_cap"}, \
Invisible:1b, \
Marker:1b, \
NoBasePlate:1b, \
Small:1b, \
}
execute as @n[tag=new_harmony_cap_armor_stand] at @s run function shroomhearth:harmony/spores/dowsing/initialize_armor_stand

# Tag the entity to indicate they have Spores of Dowsing
tag @s add spores_of_dowsing