# tick value
scoreboard players remove favDisableFallDamage shroomhearth 1

# update bossbar
execute store result bossbar community:favor/disable_fall_damage value run scoreboard players get favDisableFallDamage shroomhearth
bossbar set community:favor/disable_fall_damage players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favDisableFallDamage shroomhearth matches ..0 run function community:favor/disable_fall_damage/deactivate