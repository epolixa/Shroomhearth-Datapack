# tick value
scoreboard players remove favDisablePvp shroomhearth 1

# update bossbar
execute store result bossbar community:favor/disable_pvp value run scoreboard players get favDisablePvp shroomhearth
bossbar set community:favor/disable_pvp players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favDisablePvp shroomhearth matches ..0 run function community:favor/disable_pvp/deactivate
