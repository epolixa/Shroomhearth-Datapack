# tick value
scoreboard players remove favSpeed shroomhearth 1

# apply effect
effect give @a minecraft:speed 2 1 true

# update bossbar
execute store result bossbar community:favor/swiftness value run scoreboard players get favSpeed shroomhearth
bossbar set community:favor/swiftness players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favSpeed shroomhearth matches ..0 run function community:favor/swiftness/deactivate