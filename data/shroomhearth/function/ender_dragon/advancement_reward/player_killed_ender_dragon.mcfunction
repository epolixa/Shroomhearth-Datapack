# Executor: a player that killed any Ender Dragon
# Position: The Player

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/advancement_reward/player_killed_ender_dragon] "},{"selector":"@s"},{"text":" killed the Ender Dragon"}]


# revoke advancement
advancement revoke @s only shroomhearth:ender_dragon/player_killed_ender_dragon

# announcement
tellraw @a [{"text":"The "}, {"color":"#cc00fa","text":"Ender Dragon"}, {"text":" was slain by "}, {"selector": "@s"}]

# increment hit stat
scoreboard players add @s ender_dragon_stats_hits 1

# increment total dragons slain for each player involved
scoreboard players add @a[predicate=shroomhearth:ender_dragon/on_main_end_island] ender_dragon_stats_total_slain 1

# grant laura advancement if slain 20 dragons
advancement grant @a[scores={ender_dragon_stats_total_slain=20..}] only shroomhearth:challenges/lalalauraaaa/crazy_dragon_lady

# capture stats for slay time
scoreboard players set ender_dragon_stats_fight_time_seconds shroomhearth.ender_dragon 60
scoreboard players operation ender_dragon_stats_fight_time_minutes shroomhearth.ender_dragon = ender_dragon_stats_fight_time shroomhearth.ender_dragon
scoreboard players operation ender_dragon_stats_fight_time_minutes shroomhearth.ender_dragon /= ender_dragon_stats_fight_time_seconds shroomhearth.ender_dragon
scoreboard players operation ender_dragon_stats_fight_time_seconds shroomhearth.ender_dragon *= ender_dragon_stats_fight_time_minutes shroomhearth.ender_dragon
scoreboard players operation ender_dragon_stats_fight_time shroomhearth.ender_dragon -= ender_dragon_stats_fight_time_seconds shroomhearth.ender_dragon

# tell stats to enabled players
execute as @a[predicate=shroomhearth:ender_dragon/on_main_end_island,scores={ender_dragon_stats_enabled=1..}] run function shroomhearth:ender_dragon/tell_stats

# set ender_dragon_slain
scoreboard players set ender_dragon_slain shroomhearth.ender_dragon 1

# give harmony to each other participating player
execute as @a[predicate=shroomhearth:ender_dragon/on_main_end_island] at @s run scoreboard players add @a[predicate=shroomhearth:ender_dragon/on_main_end_island,distance=0.1..] harmony 8