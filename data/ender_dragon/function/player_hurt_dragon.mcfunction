# revoke trigger for damage bonus
advancement revoke @s only ender_dragon:player_hurt_dragon

# increment hit stat
scoreboard players add @s dragStatHits 1

# increase rage depending on omen level and health threshold
execute as @n[tag=omen_ender_dragon] run scoreboard players operation @s rage += @s omen_level
execute as @n[tag=omen_ender_dragon,scores={bossHealthPercent=..30}] run scoreboard players add @s rage 9
execute as @n[tag=omen_ender_dragon,scores={bossHealthPercent=31..50}] run scoreboard players add @s rage 7
execute as @n[tag=omen_ender_dragon,scores={bossHealthPercent=51..70}] run scoreboard players add @s rage 5
execute as @n[tag=omen_ender_dragon,scores={bossHealthPercent=71..90}] run scoreboard players add @s rage 3
execute as @n[tag=omen_ender_dragon,scores={bossHealthPercent=91..}] run scoreboard players add @s rage 1

# small chance to teleport dragon
execute as @n[tag=omen_ender_dragon] at @s if predicate ender_dragon:can_warp if predicate shroomhearth:random_chance_20 run function ender_dragon:warp_dragon_out