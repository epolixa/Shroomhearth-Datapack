# this lists out stats in chat for a player
# should be executed from the context of the player

#tellraw @s {"text":"YOUR ENDER DRAGON STATS"}

tellraw @s [{"color":"#cc00fa","text":"◆ "},{"color":"white","text": "Deaths: "},{"score":{"name":"@s","objective":"dragStatDeaths"}}]
tellraw @s [{"color":"#cc00fa","text":"◆ "},{"color":"white","text": "Endermen killed: "},{"score":{"name":"@s","objective":"dragStatEndermen"}}]
tellraw @s [{"color":"#cc00fa","text":"◆ "},{"color":"white","text": "Thrall mobs killed: "},{"score":{"name":"@s","objective":"dragStatMobs"}}]
#tellraw @s [{"text": "- End Crystals broken: "},{"score":{"name":"@s","objective":"dragStatCrystals"}}]
# MC-117824 :(
tellraw @s [{"color":"#cc00fa","text":"◆ "},{"color":"white","text": "Hits on Ender Dragon: "},{"score":{"name":"@s","objective":"dragStatHits"}}]
execute if score dragStatSlayTime shroomhearth matches ..9 run tellraw @s [{"color":"#cc00fa","text":"◆ "},{"color":"white","text": "Time to slay Ender Dragon: "},{"score":{"name":"dragStatSlayTimeMin","objective":"shroomhearth"}},{"text":":0"},{"score":{"name":"dragStatSlayTime","objective":"shroomhearth"}}]
execute if score dragStatSlayTime shroomhearth matches 10.. run tellraw @s [{"color":"#cc00fa","text":"◆ "},{"color":"white","text": "Time to slay Ender Dragon: "},{"score":{"name":"dragStatSlayTimeMin","objective":"shroomhearth"}},{"text":":"},{"score":{"name":"dragStatSlayTime","objective":"shroomhearth"}}]
tellraw @s [{"color":"#cc00fa","text":"◆ "},{"color":"white","text": "Total Ender Dragons slain: "},{"score":{"name":"@s","objective":"dragStatTotalSlain"}}]