# tick value
scoreboard players remove favRegeneration shroomhearth 1

# check regeneration duration
execute as @a store result score @s regenerationDuration run data get entity @s active_effects[{id:"minecraft:regeneration"}].duration

# apply effect if regen is less than 1 second
execute as @a if score @s regenerationDuration matches ..20 run effect give @s minecraft:regeneration 11 0 true

# update bossbar
execute store result bossbar community:favor/regeneration value run scoreboard players get favRegeneration shroomhearth
bossbar set community:favor/regeneration players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favRegeneration shroomhearth matches ..0 run function community:favor/regeneration/deactivate