# Executor: A Player who hurt the ender dragon
# Position: The Player

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/advancement_reward/player_hurt_dragon] "},{"selector":"@s"},{"text":" hurt the Ender Dragon"}]


# revoke trigger for damage bonus
advancement revoke @s only shroomhearth:ender_dragon/player_hurt_dragon

# increment hit stat
scoreboard players add @s ender_dragon_stats_hits 1

# increase rage depending on omen level and health threshold
execute as @n[tag=omen_ender_dragon] run scoreboard players operation @s rage += @s omen_level
execute as @n[tag=omen_ender_dragon,scores={health_percent=..30}] run scoreboard players add @s rage 9
execute as @n[tag=omen_ender_dragon,scores={health_percent=31..50}] run scoreboard players add @s rage 7
execute as @n[tag=omen_ender_dragon,scores={health_percent=51..70}] run scoreboard players add @s rage 5
execute as @n[tag=omen_ender_dragon,scores={health_percent=71..90}] run scoreboard players add @s rage 3
execute as @n[tag=omen_ender_dragon,scores={health_percent=91..}] run scoreboard players add @s rage 1

# small chance to teleport dragon
execute as @n[tag=omen_ender_dragon] at @s if predicate shroomhearth:ender_dragon/dragon_can_warp if predicate shroomhearth:random_chance_20 run function shroomhearth:ender_dragon/warp_dragon_out