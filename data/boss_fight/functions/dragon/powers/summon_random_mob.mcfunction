# set lcg
scoreboard players set lcgModulus bityard 29
function bityard:lcg/random

# summon a random mob
execute if score lcg bityard matches 0 run summon minecraft:zombie ~ ~ ~
execute if score lcg bityard matches 1 run summon minecraft:zombie_villager ~ ~ ~
execute if score lcg bityard matches 2 run summon minecraft:husk ~ ~ ~
execute if score lcg bityard matches 3 run summon minecraft:drowned ~ ~ ~
execute if score lcg bityard matches 4 run summon minecraft:skeleton ~ ~ ~
execute if score lcg bityard matches 5 run summon minecraft:stray ~ ~ ~
execute if score lcg bityard matches 6 run summon minecraft:wither_skeleton ~ ~ ~
execute if score lcg bityard matches 7 run summon minecraft:creeper ~ ~ ~
execute if score lcg bityard matches 8 run summon minecraft:spider ~ ~ ~
execute if score lcg bityard matches 9 run summon minecraft:cave_spider ~ ~ ~
execute if score lcg bityard matches 10 run summon minecraft:silverfish ~ ~ ~
execute if score lcg bityard matches 11 run summon minecraft:slime ~ ~ ~
execute if score lcg bityard matches 12 run summon minecraft:witch ~ ~ ~
execute if score lcg bityard matches 13 run summon minecraft:vindicator ~ ~ ~
execute if score lcg bityard matches 14 run summon minecraft:pillager ~ ~ ~
execute if score lcg bityard matches 15 run summon minecraft:illusioner ~ ~ ~
execute if score lcg bityard matches 16 run summon minecraft:ravager ~ ~ ~
execute if score lcg bityard matches 17 run summon minecraft:phantom ~ ~8 ~
execute if score lcg bityard matches 18 run summon minecraft:guardian ~ ~ ~
execute if score lcg bityard matches 19 run summon minecraft:hoglin ~ ~ ~
execute if score lcg bityard matches 20 run summon minecraft:zoglin ~ ~ ~
execute if score lcg bityard matches 21 run summon minecraft:piglin ~ ~ ~
execute if score lcg bityard matches 22 run summon minecraft:zombified_piglin ~ ~ ~
execute if score lcg bityard matches 23 run summon minecraft:piglin_brute ~ ~ ~
execute if score lcg bityard matches 24 run summon minecraft:magma_cube ~ ~ ~
execute if score lcg bityard matches 25 run summon minecraft:blaze ~ ~ ~
execute if score lcg bityard matches 26 run summon minecraft:ghast ~ ~8 ~
execute if score lcg bityard matches 27 run summon minecraft:endermite ~ ~ ~
execute if score lcg bityard matches 28 run summon minecraft:shulker ~ ~ ~

# unset lcg
scoreboard players set lcg bityard -1

# tag mob that just spawned
execute as @e[type=#boss_fight:dragon_summon,limit=1,sort=nearest,tag=!dragon_summon] run tag @s add dragon_summon
execute as @e[type=#boss_fight:dragon_summon,limit=1,sort=nearest,tag=!new_summon] run tag @s add new_summon

# join mob to dragon team so kill message has color
team join dragon @e[tag=new_summon,limit=1,sort=nearest]

# give persistance tag so mobs dont just despawn
execute as @e[type=!#boss_fight:flying,tag=new_summon,limit=1,sort=nearest] run data merge entity @s {PersistenceRequired:1b}

# fix data for certain mobs
execute as @e[type=#boss_fight:piglins,tag=new_summon,limit=1,sort=nearest] run data merge entity @s {IsImmuneToZombification:1b}
execute as @e[type=#boss_fight:babies,tag=new_summon,limit=1,sort=nearest] run data merge entity @s {Age:0,IsBaby:0b}

# play particles on summoned mobs
execute as @e[tag=new_summon,limit=1,sort=nearest] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.1 0 0.1 0.05 20 force

# play sound on summoned mobs
execute as @e[tag=new_summon,limit=1,sort=nearest] at @s run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 0.9

# remove new spawn tags
tag @e[tag=dragon_summon,limit=1,sort=nearest] remove new_summon