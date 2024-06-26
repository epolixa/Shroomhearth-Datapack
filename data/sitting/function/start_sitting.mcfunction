# summon temporary "seat" armor stand
execute at @e[tag=target_cushion,limit=1,sort=nearest] positioned ~ ~-0.03126 ~ run function sitting:set_seat

# set cushion invisible
data modify entity @e[tag=target_cushion,limit=1,sort=nearest] Invisible set value true

# copy player rotation to "seat"
data modify entity @e[tag=seat,limit=1,sort=nearest] Rotation set from entity @s Rotation

# start riding "seat"
ride @s mount @e[tag=seat,limit=1,sort=nearest]

# tp seat to itself to fix rotation
execute as @e[tag=seat,limit=1,sort=nearest] at @s run tp @s

# play sound
execute at @s run playsound minecraft:block.wool.step player @a ~ ~ ~ 1 0.8

# grant advancement
advancement grant @s only sitting:take_a_seat