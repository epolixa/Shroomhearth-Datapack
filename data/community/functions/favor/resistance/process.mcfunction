# tick value
scoreboard players remove favResistance shroomhearth 1

# apply effect
effect give @a minecraft:resistance 2 1 true

# update bossbar
execute store result bossbar community:favor/resistance value run scoreboard players get favResistance shroomhearth
bossbar set community:favor/resistance players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favResistance shroomhearth matches ..0 run function community:favor/resistance/deactivate