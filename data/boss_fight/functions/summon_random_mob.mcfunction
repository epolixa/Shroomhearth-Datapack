# set lcg
scoreboard players set bityard lcgModulus 31
function bityard:lcg/random

# summon a random mob
execute if score bityard lcg matches 0 run summon minecraft:zombie ~ ~ ~
execute if score bityard lcg matches 1 run summon minecraft:zombie_villager ~ ~ ~
execute if score bityard lcg matches 2 run summon minecraft:husk ~ ~ ~
execute if score bityard lcg matches 3 run summon minecraft:drowned ~ ~ ~
execute if score bityard lcg matches 4 run summon minecraft:skeleton ~ ~ ~
execute if score bityard lcg matches 5 run summon minecraft:stray ~ ~ ~
execute if score bityard lcg matches 6 run summon minecraft:wither_skeleton ~ ~ ~
execute if score bityard lcg matches 7 run summon minecraft:creeper ~ ~ ~
execute if score bityard lcg matches 8 run summon minecraft:spider ~ ~ ~
execute if score bityard lcg matches 9 run summon minecraft:cave_spider ~ ~ ~
execute if score bityard lcg matches 10 run summon minecraft:silverfish ~ ~ ~
execute if score bityard lcg matches 11 run summon minecraft:slime ~ ~ ~
execute if score bityard lcg matches 12 run summon minecraft:witch ~ ~ ~
execute if score bityard lcg matches 13 run summon minecraft:vindicator ~ ~ ~
execute if score bityard lcg matches 14 run summon minecraft:pillager ~ ~ ~
execute if score bityard lcg matches 15 run summon minecraft:illusioner ~ ~ ~
execute if score bityard lcg matches 16 run summon minecraft:evoker ~ ~ ~
execute if score bityard lcg matches 17 run summon minecraft:ravager ~ ~ ~
execute if score bityard lcg matches 18 run summon minecraft:phantom ~ ~ ~
execute if score bityard lcg matches 19 run summon minecraft:guardian ~ ~ ~
execute if score bityard lcg matches 20 run summon minecraft:elder_guardian ~ ~ ~
execute if score bityard lcg matches 21 run summon minecraft:hoglin ~ ~ ~
execute if score bityard lcg matches 22 run summon minecraft:zoglin ~ ~ ~
execute if score bityard lcg matches 23 run summon minecraft:piglin ~ ~ ~
execute if score bityard lcg matches 24 run summon minecraft:zombified_piglin ~ ~ ~
execute if score bityard lcg matches 25 run summon minecraft:piglin_brute ~ ~ ~
execute if score bityard lcg matches 26 run summon minecraft:magma_cube ~ ~ ~
execute if score bityard lcg matches 27 run summon minecraft:blaze ~ ~ ~
execute if score bityard lcg matches 28 run summon minecraft:ghast ~ ~ ~
execute if score bityard lcg matches 29 run summon minecraft:endermite ~ ~ ~
execute if score bityard lcg matches 30 run summon minecraft:shulker ~ ~ ~

# unset lcg
scoreboard players set bityard lcg -1

# tag mob that just spawned
execute as @e[type=#boss_fight:dragon_summon,limit=1,sort=nearest,tag=!dragon_summon] run tag @s add dragon_summon
execute as @e[type=#boss_fight:dragon_summon,limit=1,sort=nearest,tag=!new_summon] run tag @s add new_summon

# join mob to dragon team so kill message has color
team join dragon @e[tag=new_summon,limit=1,sort=nearest]

# give persistance tag so mobs dont just despawn
execute as @e[tag=new_summon,limit=1,sort=nearest] run data merge entity @s {PersistenceRequired:1b}

# fix data for certain mobs
execute as @e[type=#boss_fight:piglins,tag=new_summon,limit=1,sort=nearest] run data merge entity @s {IsImmuneToZombification:1b}

# play particles on summoned mobs
execute as @e[tag=new_summon,limit=1,sort=nearest] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.1 0 0.1 0.05 40 force

# remove new spawn tags
tag @e[tag=dragon_summon,limit=1,sort=nearest] remove new_summon