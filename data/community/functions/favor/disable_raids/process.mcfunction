# tick value
scoreboard players remove favDisableRaids shroomhearth 1

# update bossbar
execute store result bossbar community:favor/disable_raids value run scoreboard players get favDisableRaids shroomhearth
bossbar set community:favor/disable_raids players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favDisableRaids shroomhearth matches ..0 run function community:favor/disable_raids/deactivate