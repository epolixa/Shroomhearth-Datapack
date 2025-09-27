# tick value
scoreboard players remove favDoubleXP shroomhearth 1

#execute as @e[type=minecraft:experience_orb,tag=!double_xp] at @s run function community:favor/double_xp/double_experience_orb
#execute as @e[type=minecraft:experience_orb,tag=!double_xp,limit=1,sort=random] at @s run function community:favor/double_xp/double_experience_orb
# Experience orbs value are duplicated from shroomhearth:tick

# update bossbar
execute store result bossbar community:favor/double_xp value run scoreboard players get favDoubleXP shroomhearth
bossbar set community:favor/double_xp players @a[scores={showFavorProgress=1}]

# deactivate favor if score reached zero
execute if score favDoubleXP shroomhearth matches ..0 run function community:favor/double_xp/deactivate