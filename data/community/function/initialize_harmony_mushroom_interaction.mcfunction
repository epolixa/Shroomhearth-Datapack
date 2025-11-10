summon minecraft:item_display ~ ~ ~ {Tags:["harmony_mushroom","harmony_mushroom_display","new_harmony_mushroom_display"],item:{id:"minecraft:glistering_melon_slice",count:1,components:{"minecraft:item_model":"shroomhearth:harmony_mushroom_entity"}},item_display:"head",height:0.1875,width:0.75}

execute as @n[tag=new_harmony_mushroom_display] at @s run function community:initialize_harmony_mushroom_display

playsound minecraft:block.chorus_flower.grow block @a ~ ~ ~ 1 1.7

tag @s remove new_harmony_mushroom_interaction