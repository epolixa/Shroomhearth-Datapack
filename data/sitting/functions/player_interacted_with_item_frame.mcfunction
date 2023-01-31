advancement revoke @s only sitting:player_interacted_with_item_frame

# move player to nearest matching "cushion"
#tp @s @e[type=minecraft:item_frame,nbt={Facing:1b},limit=1,sort=nearest]

# summon temporary "seat" armor stand
#execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["seat"],NoAI:true,Small:true}
execute at @e[type=minecraft:item_frame,nbt={Facing:1b},limit=1,sort=nearest] if block ~ ~-0.1 ~ #minecraft:slabs[type=bottom] run summon minecraft:armor_stand ~ ~-1.5 ~ {Tags:["seat"],Small:true,NoAI:true,NoGravity:true,Invisible:true}
execute at @e[type=minecraft:item_frame,nbt={Facing:1b},limit=1,sort=nearest] if block ~ ~-0.1 ~ #minecraft:stairs[half=bottom] run summon minecraft:armor_stand ~ ~-1.5 ~ {Tags:["seat"],Small:true,NoAI:true,NoGravity:true,Invisible:true}
execute at @e[type=minecraft:item_frame,nbt={Facing:1b},limit=1,sort=nearest] unless block ~ ~-0.1 ~ #minecraft:slabs[type=bottom] unless block ~ ~-0.1 ~ #minecraft:stairs[half=bottom] run summon minecraft:armor_stand ~ ~-1 ~ {Tags:["seat"],Small:true,NoAI:true,NoGravity:true,Invisible:true}
#execute at @e[type=minecraft:item_frame,nbt={Facing:1b},limit=1,sort=nearest] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["seat"]}

# set cushion invisible
data modify entity @e[type=minecraft:item_frame,nbt={Facing:1b},limit=1,sort=nearest] Invisible set value true

# copy player rotation to "seat"
data modify entity @e[tag=seat,limit=1,sort=nearest] Rotation set from entity @s Rotation

# start riding "seat"
ride @s mount @e[tag=seat,limit=1,sort=nearest]

# play sound
execute at @s run playsound minecraft:block.wool.step player @a ~ ~ ~ 1 0.8