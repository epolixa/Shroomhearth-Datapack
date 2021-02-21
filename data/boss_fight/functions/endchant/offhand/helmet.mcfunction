# set lcg
scoreboard players set bityard lcgModulus 7
function bityard:lcg/random

# run item modifiers based on lcg result
execute if score bityard lcg matches 0 run item entity @s weapon.offhand modify boss_fight:endchant/protection
execute if score bityard lcg matches 1 run item entity @s weapon.offhand modify boss_fight:endchant/projectile_protection
execute if score bityard lcg matches 2 run item entity @s weapon.offhand modify boss_fight:endchant/fire_protection
execute if score bityard lcg matches 3 run item entity @s weapon.offhand modify boss_fight:endchant/blast_protection
execute if score bityard lcg matches 4 run item entity @s weapon.offhand modify boss_fight:endchant/respiration
execute if score bityard lcg matches 5 run item entity @s weapon.offhand modify boss_fight:endchant/thorns
execute if score bityard lcg matches 6 run item entity @s weapon.offhand modify boss_fight:endchant/unbreaking

# unset lcg
scoreboard players set bityard lcg -1

# tag player
tag @s add endchant

# show actionbar
title @s actionbar {"color":"white","text":"Your Helmet attunes to the Ender Dragon"}

# play sounds & effects
execute at @s run particle minecraft:witch ~ ~0.9 ~ 0.2 0.45 0.2 0.01 20
execute at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 0.5