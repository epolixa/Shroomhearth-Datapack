# adjust seat height to match various block heights
# summon height should be -0.98 - (1 - (seat_height * 0.0625))
execute if predicate sitting:seat_height/3 run summon minecraft:armor_stand ~ ~-1.7925 ~ {Tags:["seat"],Small:true,NoAI:true,NoGravity:true,Invisible:true}
execute if predicate sitting:seat_height/8 run summon minecraft:armor_stand ~ ~-1.48 ~ {Tags:["seat"],Small:true,NoAI:true,NoGravity:true,Invisible:true}
execute if predicate sitting:seat_height/9 run summon minecraft:armor_stand ~ ~-1.4175 ~ {Tags:["seat"],Small:true,NoAI:true,NoGravity:true,Invisible:true}
execute if predicate sitting:seat_height/11 run summon minecraft:armor_stand ~ ~-1.2925 ~ {Tags:["seat"],Small:true,NoAI:true,NoGravity:true,Invisible:true}
execute if predicate sitting:seat_height/14 run summon minecraft:armor_stand ~ ~-1.105 ~ {Tags:["seat"],Small:true,NoAI:true,NoGravity:true,Invisible:true}
execute if predicate sitting:seat_height/16 run summon minecraft:armor_stand ~ ~-0.98 ~ {Tags:["seat"],Small:true,NoAI:true,NoGravity:true,Invisible:true}