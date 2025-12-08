# Create a display entity for the harmony cap
summon minecraft:item_display ~ ~ ~ {\
Tags: ["harmony_cap","harmony_cap_display","new_harmony_cap_display"], \
item: {id: "minecraft:glistering_melon_slice", count:1, components: {"minecraft:item_model":"shroomhearth:harmony_cap_entity"}}, \
item_display: "head", \
height: 0.1875, \
width: 0.5\
}

execute as @n[tag=new_harmony_cap_display] at @s run function harmony:harmony_cap/initialize_display

# Play a growing sound effect
playsound minecraft:block.chorus_flower.grow block @a ~ ~ ~ 0.5 1.9

tag @s remove new_harmony_cap_interaction