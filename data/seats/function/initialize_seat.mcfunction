say initializing seat

execute if entity @s[tag=white_seat] run summon minecraft:item_display ~ ~ ~ {Tags:["seat","seat_display","white_seat"],item:{id:"minecraft:white_carpet",count:1,components:{"minecraft:item_model":"shroomhearth:white_seat_entity"}},item_display:"head",height:0.1875,width:0.75}

ride @n[tag=seat_display,tag=!initialized] mount @s

execute on passengers run tag @s add initialized



playsound minecraft:block.wool.place block @a ~ ~ ~ 1 1.2

tag @s add initialized

say seat initialized

execute if block ~ ~-0.0625 ~ minecraft:air run function seats:drop_seat