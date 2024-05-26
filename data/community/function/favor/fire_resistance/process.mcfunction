# tick value
scoreboard players remove favFireResistance shroomhearth 1

# apply effect
effect give @a minecraft:fire_resistance 2 0 true

# update bossbar
execute store result bossbar community:favor/fire_resistance value run scoreboard players get favFireResistance shroomhearth
bossbar set community:favor/fire_resistance players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favFireResistance shroomhearth matches ..0 run function community:favor/fire_resistance/deactivate