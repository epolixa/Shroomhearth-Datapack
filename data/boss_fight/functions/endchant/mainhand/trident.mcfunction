# set lcg
scoreboard players set bityard lcgModulus 4
function bityard:lcg/random

# run item modifiers based on lcg result
execute if score bityard lcg matches 0 run item entity @s weapon.mainhand modify boss_fight:endchant/impaling
execute if score bityard lcg matches 1 run item entity @s weapon.mainhand modify boss_fight:endchant/unbreaking

# loyalty
execute if score bityard lcg matches 2 unless predicate boss_fight:enchanted/mainhand/riptide run item entity @s weapon.mainhand modify boss_fight:endchant/loyalty
execute if score bityard lcg matches 2 if predicate boss_fight:enchanted/mainhand/riptide run item entity @s weapon.mainhand modify boss_fight:endchant/riptide

# riptide - gets loyalty if channeling is present
execute if score bityard lcg matches 3 unless predicate boss_fight:enchanted/mainhand/channeling_or_loyalty run item entity @s weapon.mainhand modify boss_fight:endchant/riptide
execute if score bityard lcg matches 3 if predicate boss_fight:enchanted/mainhand/channeling_or_loyalty run item entity @s weapon.mainhand modify boss_fight:endchant/loyalty

# unset lcg
scoreboard players set bityard lcg -1

# tag player
tag @s add endchant

# show actionbar
title @s actionbar {"color":"white","text":"Your Trident attunes to the Ender Dragon"}

# play sounds & effects
execute at @s run particle minecraft:witch ~ ~0.9 ~ 0.2 0.45 0.2 0.01 20
execute at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 0.5