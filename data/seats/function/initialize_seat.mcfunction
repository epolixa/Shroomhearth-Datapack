say initializing seat

execute if entity @s[tag=white_seat] run summon minecraft:block_display ~ ~ ~ {"Tags":["seat","seat_block_display","white_seat"],"block_state":{"Name":"minecraft:white_wool"},"height":0.1875,"width":0.75,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.75f,0.1875f,0.75f],translation:[-0.375f,-0.1875f,-0.375f]}}

ride @n[tag=seat_block_display,tag=!initialized] mount @s

execute on passengers run tag @s add initialized



playsound minecraft:block.wool.place block @a ~ ~ ~ 1 1.2

tag @s add initialized

say seat initialized

execute if block ~ ~-0.0625 ~ minecraft:air run function seats:drop_seat