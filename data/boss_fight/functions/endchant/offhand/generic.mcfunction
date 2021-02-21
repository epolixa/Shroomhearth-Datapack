# run item modifiers
item entity @s weapon.offhand modify boss_fight:endchant/unbreaking

# tag player
tag @s add endchant

# show actionbar
title @s actionbar {"color":"white","text":"Your Equipment attunes to the Ender Dragon"}

# play sounds & effects
execute at @s run particle minecraft:witch ~ ~0.9 ~ 0.2 0.45 0.2 0.01 20
execute at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 0.5