# Executor: Player who hurt the wither
# Position: the player

tellraw @a[tag=debug_wither] [{"text":"[shroomhearth:wither/player_hurt_wither] Player "},{"selector":"@s"},{"text":" hurt a Wither"}]


# revoke trigger
advancement revoke @s only shroomhearth:wither/player_hurt_wither

# check wither's health
execute as @n[type=minecraft:wither] at @s as @s[tag=!summoned_wither_skeletons] run function shroomhearth:wither/check_health