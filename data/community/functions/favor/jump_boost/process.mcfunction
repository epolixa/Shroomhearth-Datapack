# tick value
scoreboard players remove favJumpBoost shroomhearth 1

# apply effect
effect give @a minecraft:jump_boost 2 0 true

# update bossbar
execute store result bossbar community:favor/jump_boost value run scoreboard players get favJumpBoost shroomhearth
bossbar set community:favor/jump_boost players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favJumpBoost shroomhearth matches ..0 run function community:favor/jump_boost/deactivate