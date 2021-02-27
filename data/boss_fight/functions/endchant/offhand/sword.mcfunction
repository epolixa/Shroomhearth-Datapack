# set lcg
scoreboard players set bityard lcgModulus 8
function bityard:lcg/random

# run item modifiers based on lcg result
execute if score bityard lcg matches 0 run item entity @s weapon.offhand modify boss_fight:endchant/fire_aspect
execute if score bityard lcg matches 1 run item entity @s weapon.offhand modify boss_fight:endchant/looting
execute if score bityard lcg matches 2 run item entity @s weapon.offhand modify boss_fight:endchant/knockback
execute if score bityard lcg matches 3 run item entity @s weapon.offhand modify boss_fight:endchant/sweeping
execute if score bityard lcg matches 4 run item entity @s weapon.offhand modify boss_fight:endchant/unbreaking

# sharpness
execute if score bityard lcg matches 5 unless predicate boss_fight:enchanted/offhand/smite unless predicate boss_fight:enchanted/offhand/bane_of_arthropods run item entity @s weapon.offhand modify boss_fight:endchant/sharpness
execute if score bityard lcg matches 5 if predicate boss_fight:enchanted/offhand/smite run item entity @s weapon.offhand modify boss_fight:endchant/smite
execute if score bityard lcg matches 5 if predicate boss_fight:enchanted/offhand/bane_of_arthropods run item entity @s weapon.offhand modify boss_fight:endchant/bane_of_arthropods

# smite
execute if score bityard lcg matches 6 unless predicate boss_fight:enchanted/offhand/sharpness unless predicate boss_fight:enchanted/offhand/bane_of_arthropods run item entity @s weapon.offhand modify boss_fight:endchant/smite
execute if score bityard lcg matches 6 if predicate boss_fight:enchanted/offhand/sharpness run item entity @s weapon.offhand modify boss_fight:endchant/sharpness
execute if score bityard lcg matches 6 if predicate boss_fight:enchanted/offhand/bane_of_arthropods run item entity @s weapon.offhand modify boss_fight:endchant/bane_of_arthropods

# bane of arthropods
execute if score bityard lcg matches 7 unless predicate boss_fight:enchanted/offhand/smite unless predicate boss_fight:enchanted/offhand/sharpness run item entity @s weapon.offhand modify boss_fight:endchant/bane_of_arthropods
execute if score bityard lcg matches 7 if predicate boss_fight:enchanted/offhand/smite run item entity @s weapon.offhand modify boss_fight:endchant/smite
execute if score bityard lcg matches 7 if predicate boss_fight:enchanted/offhand/sharpness run item entity @s weapon.offhand modify boss_fight:endchant/sharpness

# unset lcg
scoreboard players set bityard lcg -1

# tag player
tag @s add endchant

# show actionbar
title @s actionbar {"color":"white","text":"Your Sword attunes to the Ender Dragon"}

# play sounds & effects
execute at @s run particle minecraft:witch ~ ~0.9 ~ 0.2 0.45 0.2 0.01 20
execute at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 0.5