# revoke trigger for damage bonus
advancement revoke @s only boss_fight:dragon/player_damage

# increase rage depending on remaining health
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest,scores={bossHealth=2..60}] run scoreboard players add @s rage 19
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest,scores={bossHealth=61..100}] run scoreboard players add @s rage 15
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest,scores={bossHealth=101..140}] run scoreboard players add @s rage 11
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest,scores={bossHealth=141..180}] run scoreboard players add @s rage 7
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest,scores={bossHealth=181..199}] run scoreboard players add @s rage 3