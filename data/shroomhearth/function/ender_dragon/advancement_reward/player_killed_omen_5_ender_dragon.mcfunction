# Executor: A Player who killed a level 5 or higher Omen Ender Dragon
# Position: The Player

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/advancement_reward/player_killed_omen_5_ender_dragon] "},{"selector":"@s"},{"text":" killed a level 5 or higher Omen Ender Dragon"}]


# revoke advancement
advancement revoke @s only shroomhearth:ender_dragon/player_killed_omen_5_ender_dragon

# capture number of players and grant legendary battle advancement if still alone
execute store result score ender_dragon_players shroomhearth.ender_dragon if entity @a[predicate=shroomhearth:ender_dragon/on_main_end_island]
execute if score ender_dragon_players shroomhearth.ender_dragon matches 1 if score active_spores shroomhearth.harmony matches 0 run advancement grant @s[scores={ender_dragon_stats_deaths=0}] only shroomhearth:ender_dragon/legendary_battle