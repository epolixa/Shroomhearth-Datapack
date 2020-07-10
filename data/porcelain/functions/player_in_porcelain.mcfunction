################################################################
# player in porcelain
# mechanics relative to player in porcelain per tick
################################################################

# activate porcelain item in porcelain
execute as @s[scores={porcelainItem=1..}] run function porcelain:exit_porcelain

# porcelain anchor functions
execute as @e[type=minecraft:armor_stand,tag=porcelain_anchor,sort=nearest,limit=1] at @s run function porcelain:anchor_in_porcelain

# prevent exploits
clear @s minecraft:ender_chest
clear @s minecraft:experience_bottle