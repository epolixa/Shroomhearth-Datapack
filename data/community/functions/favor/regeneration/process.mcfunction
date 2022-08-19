# tick value
scoreboard players remove favRegeneration shroomhearth 1

# apply effect
effect give @a minecraft:regeneration 2 0 true

# update bossbar
execute store result bossbar community:favor/regeneration value run scoreboard players get favRegeneration shroomhearth
bossbar set community:favor/regeneration players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favRegeneration shroomhearth matches ..0 run function community:favor/regeneration/deactivate