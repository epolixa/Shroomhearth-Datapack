say initializing seat

execute if entity @s[tag=white_seat] run summon minecraft:item_display ~ ~ ~ {Tags:["seat","seat_display","white_seat"],item:{id:"minecraft:white_carpet",count:1,components:{"minecraft:item_model":"shroomhearth:white_seat_entity"}},item_display:"head",height:0.1875,width:0.75}
execute if entity @s[tag=light_gray_seat] run summon minecraft:item_display ~ ~ ~ {Tags:["seat","seat_display","light_gray_seat"],item:{id:"minecraft:light_gray_carpet",count:1,components:{"minecraft:item_model":"shroomhearth:light_gray_seat_entity"}},item_display:"head",height:0.1875,width:0.75}
execute if entity @s[tag=gray_seat] run summon minecraft:item_display ~ ~ ~ {Tags:["seat","seat_display","gray_seat"],item:{id:"minecraft:gray_carpet",count:1,components:{"minecraft:item_model":"shroomhearth:gray_seat_entity"}},item_display:"head",height:0.1875,width:0.75}
execute if entity @s[tag=black_seat] run summon minecraft:item_display ~ ~ ~ {Tags:["seat","seat_display","black_seat"],item:{id:"minecraft:black_carpet",count:1,components:{"minecraft:item_model":"shroomhearth:black_seat_entity"}},item_display:"head",height:0.1875,width:0.75}
execute if entity @s[tag=brown_seat] run summon minecraft:item_display ~ ~ ~ {Tags:["seat","seat_display","brown_seat"],item:{id:"minecraft:brown_carpet",count:1,components:{"minecraft:item_model":"shroomhearth:brown_seat_entity"}},item_display:"head",height:0.1875,width:0.75}
execute if entity @s[tag=red_seat] run summon minecraft:item_display ~ ~ ~ {Tags:["seat","seat_display","red_seat"],item:{id:"minecraft:red_carpet",count:1,components:{"minecraft:item_model":"shroomhearth:red_seat_entity"}},item_display:"head",height:0.1875,width:0.75}
execute if entity @s[tag=orange_seat] run summon minecraft:item_display ~ ~ ~ {Tags:["seat","seat_display","orange_seat"],item:{id:"minecraft:orange_carpet",count:1,components:{"minecraft:item_model":"shroomhearth:orange_seat_entity"}},item_display:"head",height:0.1875,width:0.75}
execute if entity @s[tag=yellow_seat] run summon minecraft:item_display ~ ~ ~ {Tags:["seat","seat_display","yellow_seat"],item:{id:"minecraft:yellow_carpet",count:1,components:{"minecraft:item_model":"shroomhearth:yellow_seat_entity"}},item_display:"head",height:0.1875,width:0.75}
execute if entity @s[tag=lime_seat] run summon minecraft:item_display ~ ~ ~ {Tags:["seat","seat_display","lime_seat"],item:{id:"minecraft:lime_carpet",count:1,components:{"minecraft:item_model":"shroomhearth:lime_seat_entity"}},item_display:"head",height:0.1875,width:0.75}
execute if entity @s[tag=green_seat] run summon minecraft:item_display ~ ~ ~ {Tags:["seat","seat_display","green_seat"],item:{id:"minecraft:green_carpet",count:1,components:{"minecraft:item_model":"shroomhearth:green_seat_entity"}},item_display:"head",height:0.1875,width:0.75}
execute if entity @s[tag=light_blue_seat] run summon minecraft:item_display ~ ~ ~ {Tags:["seat","seat_display","light_blue_seat"],item:{id:"minecraft:light_blue_carpet",count:1,components:{"minecraft:item_model":"shroomhearth:light_blue_seat_entity"}},item_display:"head",height:0.1875,width:0.75}
execute if entity @s[tag=blue_seat] run summon minecraft:item_display ~ ~ ~ {Tags:["seat","seat_display","blue_seat"],item:{id:"minecraft:blue_carpet",count:1,components:{"minecraft:item_model":"shroomhearth:blue_seat_entity"}},item_display:"head",height:0.1875,width:0.75}
execute if entity @s[tag=cyan_seat] run summon minecraft:item_display ~ ~ ~ {Tags:["seat","seat_display","cyan_seat"],item:{id:"minecraft:cyan_carpet",count:1,components:{"minecraft:item_model":"shroomhearth:cyan_seat_entity"}},item_display:"head",height:0.1875,width:0.75}
execute if entity @s[tag=purple_seat] run summon minecraft:item_display ~ ~ ~ {Tags:["seat","seat_display","purple_seat"],item:{id:"minecraft:purple_carpet",count:1,components:{"minecraft:item_model":"shroomhearth:purple_seat_entity"}},item_display:"head",height:0.1875,width:0.75}
execute if entity @s[tag=magenta_seat] run summon minecraft:item_display ~ ~ ~ {Tags:["seat","seat_display","magenta_seat"],item:{id:"minecraft:magenta_carpet",count:1,components:{"minecraft:item_model":"shroomhearth:magenta_seat_entity"}},item_display:"head",height:0.1875,width:0.75}
execute if entity @s[tag=pink_seat] run summon minecraft:item_display ~ ~ ~ {Tags:["seat","seat_display","pink_seat"],item:{id:"minecraft:pink_carpet",count:1,components:{"minecraft:item_model":"shroomhearth:pink_seat_entity"}},item_display:"head",height:0.1875,width:0.75}

ride @n[tag=seat_display,tag=!initialized] mount @s

execute on passengers as @p[tag=placed_seat] at @n[tag=seat_display,tag=!initialized] run function seats:set_seat_rotation

execute on passengers run tag @n[tag=seat_display,tag=!initialized] add initialized

playsound minecraft:block.wool.place block @a ~ ~ ~ 1 1.2

tag @s add initialized

say seat initialized