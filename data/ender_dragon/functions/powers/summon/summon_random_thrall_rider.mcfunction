# set lcg
scoreboard players set lcgModulus shroomhearth 27
function shroomhearth:lcg/random

# summon a random mob
execute if score lcg shroomhearth matches 0 run summon minecraft:zombie ~ ~ ~
execute if score lcg shroomhearth matches 1 run summon minecraft:zombie_villager ~ ~ ~
execute if score lcg shroomhearth matches 2 run summon minecraft:husk ~ ~ ~
execute if score lcg shroomhearth matches 3 run summon minecraft:drowned ~ ~ ~
execute if score lcg shroomhearth matches 4 run summon minecraft:skeleton ~ ~ ~
execute if score lcg shroomhearth matches 5 run summon minecraft:stray ~ ~ ~
execute if score lcg shroomhearth matches 6 run summon minecraft:wither_skeleton ~ ~ ~
execute if score lcg shroomhearth matches 7 run summon minecraft:creeper ~ ~ ~
execute if score lcg shroomhearth matches 8 run summon minecraft:spider ~ ~ ~
execute if score lcg shroomhearth matches 9 run summon minecraft:cave_spider ~ ~ ~
execute if score lcg shroomhearth matches 10 run summon minecraft:silverfish ~ ~ ~
execute if score lcg shroomhearth matches 11 run summon minecraft:slime ~ ~ ~
execute if score lcg shroomhearth matches 12 run summon minecraft:witch ~ ~ ~
execute if score lcg shroomhearth matches 13 run summon minecraft:vindicator ~ ~ ~
execute if score lcg shroomhearth matches 14 run summon minecraft:pillager ~ ~ ~
execute if score lcg shroomhearth matches 15 run summon minecraft:phantom ~ ~8 ~
execute if score lcg shroomhearth matches 16 run summon minecraft:guardian ~ ~ ~
execute if score lcg shroomhearth matches 17 run summon minecraft:hoglin ~ ~ ~
execute if score lcg shroomhearth matches 18 run summon minecraft:zoglin ~ ~ ~
execute if score lcg shroomhearth matches 19 run summon minecraft:piglin ~ ~ ~
execute if score lcg shroomhearth matches 20 run summon minecraft:zombified_piglin ~ ~ ~
execute if score lcg shroomhearth matches 21 run summon minecraft:piglin_brute ~ ~ ~
execute if score lcg shroomhearth matches 22 run summon minecraft:magma_cube ~ ~ ~
execute if score lcg shroomhearth matches 23 run summon minecraft:blaze ~ ~ ~
execute if score lcg shroomhearth matches 24 run summon minecraft:ghast ~ ~8 ~
execute if score lcg shroomhearth matches 25 run summon minecraft:endermite ~ ~ ~
execute if score lcg shroomhearth matches 26 run summon minecraft:shulker ~ ~ ~

# unset lcg
scoreboard players set lcg shroomhearth -1

# tag mob that just spawned
execute as @e[type=#ender_dragon:dragon_summon,limit=1,sort=nearest,tag=!dragon_summon] run tag @s add dragon_summon
execute as @e[type=#ender_dragon:dragon_summon,limit=1,sort=nearest,tag=!new_summon] run tag @s add new_summon

# join mob to dragon team so kill message has color
team join dragon @e[tag=new_summon,limit=1,sort=nearest]

# give persistance tag so mobs dont just despawn
execute as @e[type=!#ender_dragon:flying,tag=dragon_thrall,tag=new,limit=1,sort=nearest] run data merge entity @s {PersistenceRequired:1b}

# fix data for certain mobs
execute as @e[type=#ender_dragon:piglins,tag=dragon_thrall,tag=new,limit=1,sort=nearest] run data merge entity @s {IsImmuneToZombification:1b}
execute as @e[type=#ender_dragon:babies,tag=dragon_thrall,tag=new,limit=1,sort=nearest] run data merge entity @s {Age:0,IsBaby:0b}

# start riding nearest dragon thrall without passenger
ride @e[tag=dragon_thrall,tag=new,limit=1,sort=nearest] mount @e[tag=dragon_thrall,predicate=ender_dragon:thrall_without_rider,limit=1,sort=nearest,distance=0.1..]

# remove new spawn tags
tag @e[tag=dragon_thrall,limit=1,sort=nearest] remove new