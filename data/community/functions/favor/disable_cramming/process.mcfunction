# tick value
scoreboard players remove favDisableCramming shroomhearth 1

# update bossbar
execute store result bossbar community:favor/disable_cramming value run scoreboard players get favDisableCramming shroomhearth
bossbar set community:favor/disable_cramming players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favDisableCramming shroomhearth matches ..0 run function community:favor/disable_cramming/deactivate