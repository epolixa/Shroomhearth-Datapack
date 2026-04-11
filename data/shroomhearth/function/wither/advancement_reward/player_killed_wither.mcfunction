# Executor: Player who killed the wither
# Position: the player

tellraw @a[tag=debug_wither] [{"text":"[shroomhearth:wither/player_killed_wither] Player "},{"selector":"@s"},{"text":" killed a Wither"}]


# announce
tellraw @a [{"text":"A "}, {"color":"#352A27","text":"Wither"}, {"text":" was slain by "}, {"selector": "@s"}]

# kill nearest thralls
kill @e[tag=wither_thrall,limit=3,sort=nearest]

# revoke
advancement revoke @s only shroomhearth:wither/player_killed_wither