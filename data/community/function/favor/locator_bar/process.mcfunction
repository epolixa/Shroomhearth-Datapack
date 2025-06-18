# tick value
scoreboard players remove favLocatorBar shroomhearth 1

# update bossbar
execute store result bossbar community:favor/locator_bar value run scoreboard players get favLocatorBar shroomhearth
bossbar set community:favor/locator_bar players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favLocatorBar shroomhearth matches ..0 run function community:favor/locator_bar/deactivate