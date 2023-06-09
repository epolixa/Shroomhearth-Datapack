# tick value
scoreboard players remove favDisableSpawning shroomhearth 1

# update bossbar
execute store result bossbar community:favor/disable_spawning value run scoreboard players get favDisableSpawning shroomhearth
bossbar set community:favor/disable_spawning players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favDisableSpawning shroomhearth matches ..0 run function community:favor/disable_spawning/deactivate