# Executor: Player who summoned the wither
# Position: the player

tellraw @a[tag=debug_wither] [{"text":"[shroomhearth:wither/summoned_wither] Player "},{"selector":"@s"},{"text":" summoned a Wither"}]


# announce
tellraw @a [{"text":"A "}, {"color":"#352A27","text":"Wither"}, {"text":" was summoned by "}, {"selector": "@s"}]

# revoke
advancement revoke @s only shroomhearth:wither/summoned_wither