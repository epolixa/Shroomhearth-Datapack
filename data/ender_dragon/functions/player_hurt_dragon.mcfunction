# revoke trigger for damage bonus
advancement revoke @s only ender_dragon:player_hurt_dragon

# increase rage depending on remaining health
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest,scores={bossHealthPercent=..30}] run scoreboard players add @s rage 19
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest,scores={bossHealthPercent=31..50}] run scoreboard players add @s rage 15
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest,scores={bossHealthPercent=51..70}] run scoreboard players add @s rage 11
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest,scores={bossHealthPercent=71..90}] run scoreboard players add @s rage 7
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest,scores={bossHealthPercent=91..}] run scoreboard players add @s rage 3

# increment hit stat
scoreboard players add @s dragStatHits 1

# cause any riding players to dismount
execute as @e[type=ender_dragon,limit=1,sort=nearest] at @s as @p[predicate=ender_dragon:player_without_vehicle] run ride @s dismount

# small chance to teleport dragon
execute as @e[type=ender_dragon,limit=1,sort=nearest] at @s if predicate ender_dragon:circling if predicate shroomhearth:random_chance_20 run function ender_dragon:warp_dragon_out