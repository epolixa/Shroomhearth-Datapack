# play sound
playsound minecraft:item.trident.thunder hostile @a ~ ~ ~ 12 0.7

# summon lighting on random entities for each summon marker
execute positioned 0 64 0 as @e[type=armor_stand,tag=summon_marker] at @e[type=!ender_dragon,limit=1,sort=random,distance=..200] run summon minecraft:lightning_bolt ~ ~ ~