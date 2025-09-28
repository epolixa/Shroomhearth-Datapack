# tick value
scoreboard players remove favDoubleXP shroomhearth 1

# Experience orbs value are duplicated from shroomhearth:tick

# update bossbar
execute store result bossbar community:favor/double_xp value run scoreboard players get favDoubleXP shroomhearth
bossbar set community:favor/double_xp players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favDoubleXP shroomhearth matches ..0 run function community:favor/double_xp/deactivate