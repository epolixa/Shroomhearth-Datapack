# Executor: A Player receiving their ender dragon fight stats
# Position: The Player

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/tell_stats] Telling ender dragon fight stats to "},{"selector":"@s"}]


#tellraw @s {"text":"YOUR ENDER DRAGON STATS"}

tellraw @s [{"color":"#cc00fa","text":"◆ "},{"color":"white","text": "Deaths: "},{"score":{"name":"@s","objective":"ender_dragon_stats_deaths"}}]
tellraw @s [{"color":"#cc00fa","text":"◆ "},{"color":"white","text": "Endermen killed: "},{"score":{"name":"@s","objective":"ender_dragon_stats_endermen"}}]
tellraw @s [{"color":"#cc00fa","text":"◆ "},{"color":"white","text": "Thrall mobs killed: "},{"score":{"name":"@s","objective":"ender_dragon_stats_mobs"}}]
#tellraw @s [{"text": "- End Crystals broken: "},{"score":{"name":"@s","objective":"ender_dragon_stats_end_crystals"}}]
# MC-117824 :(
tellraw @s [{"color":"#cc00fa","text":"◆ "},{"color":"white","text": "Hits on Ender Dragon: "},{"score":{"name":"@s","objective":"ender_dragon_stats_hits"}}]
execute if score ender_dragon_stats_fight_time shroomhearth.ender_dragon matches ..9 run tellraw @s [{"color":"#cc00fa","text":"◆ "},{"color":"white","text": "Time to slay Ender Dragon: "},{"score":{"name":"ender_dragon_stats_fight_timeMin","objective":"shroomhearth.ender_dragon"}},{"text":":0"},{"score":{"name":"ender_dragon_stats_fight_time","objective":"shroomhearth.ender_dragon"}}]
execute if score ender_dragon_stats_fight_time shroomhearth.ender_dragon matches 10.. run tellraw @s [{"color":"#cc00fa","text":"◆ "},{"color":"white","text": "Time to slay Ender Dragon: "},{"score":{"name":"ender_dragon_stats_fight_timeMin","objective":"shroomhearth.ender_dragon"}},{"text":":"},{"score":{"name":"ender_dragon_stats_fight_time","objective":"shroomhearth.ender_dragon"}}]
tellraw @s [{"color":"#cc00fa","text":"◆ "},{"color":"white","text": "Total Ender Dragons slain: "},{"score":{"name":"@s","objective":"ender_dragon_stats_total_slain"}}]