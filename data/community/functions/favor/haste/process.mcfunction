# tick value
scoreboard players remove favHaste shroomhearth 1

# apply effect
effect give @a minecraft:haste 2 1 true

# update bossbar
execute store result bossbar community:favor/haste value run scoreboard players get favHaste shroomhearth
bossbar set community:favor/haste players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favHaste shroomhearth matches ..0 run function community:favor/haste/deactivate