# executed from context of wither that just got damaged to half health

# play sound
playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 1 2

# summon three wither skeletons
summon minecraft:wither_skeleton ^1 ^ ^
summon minecraft:wither_skeleton ^ ^ ^1
summon minecraft:wither_skeleton ^-1 ^ ^

# tag mob that just spawned
execute as @e[type=minecraft:wither_skeleton,limit=3,sort=nearest,tag=!wither_thrall] run tag @s add wither_thrall
execute as @e[type=minecraft:wither_skeleton,limit=3,sort=nearest,tag=!new] run tag @s add new

# join mob to wither team so kill message has color
team join wither @e[tag=wither_thrall,tag=new,limit=3,sort=nearest]

# give persistance tag so mobs dont just despawn
execute as @e[tag=wither_thrall,tag=new,limit=3,sort=nearest] run data merge entity @s {PersistenceRequired:1b}

# play particles on summoned mobs
execute as @e[tag=wither_thrall,tag=new,limit=3,sort=nearest] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.1 0 0.1 0.05 20

# remove new spawn tags
tag @e[tag=wither_thrall,tag=new,limit=3,sort=nearest] remove new

# update wither score so it does not summon skeletons again
scoreboard players set @s summonedSkeletons 1
