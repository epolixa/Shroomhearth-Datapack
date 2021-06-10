# play sound
playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 1 2

# summon two wither skeletons
summon minecraft:wither_skeleton ~2 ~ ~
summon minecraft:wither_skeleton ~-2 ~ ~

# tag mob that just spawned
execute as @e[type=minecraft:wither_skeleton,limit=2,sort=nearest,tag=!wither_summon] run tag @s add wither_summon
execute as @e[type=minecraft:wither_skeleton,limit=2,sort=nearest,tag=!new_summon] run tag @s add new_summon

# join mob to wither team so kill message has color
team join wither @e[tag=new_summon,limit=2,sort=nearest]

# give persistance tag so mobs dont just despawn
execute as @e[tag=new_summon,limit=2,sort=nearest] run data merge entity @s {PersistenceRequired:1b}

# spread them
spreadplayers ~ ~ 1 10 false @e[tag=wither_summon,tag=new_summon,limit=2,sort=nearest]

# play particles on summoned mobs
execute as @e[tag=new_summon,limit=2,sort=nearest] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.1 0 0.1 0.05 20 force

# play sound on summoned mobs
#execute as @e[tag=new_summon,limit=2,sort=nearest] at @s run playsound minecraft:entity.wither_skeleton.death hostile @a ~ ~ ~ 1 1.5

# remove new spawn tags
tag @e[tag=wither_summon,limit=2,sort=nearest] remove new_summon