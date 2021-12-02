# set lcg
scoreboard players set lcgModulus shroomhearth 4
function shroomhearth:lcg/random

# run item modifiers based on lcg result
execute if score lcg shroomhearth matches 0 run item modify entity @s weapon.offhand boss_fight:endchant/impaling
execute if score lcg shroomhearth matches 1 run item modify entity @s weapon.offhand boss_fight:endchant/unbreaking

# loyalty
execute if score lcg shroomhearth matches 2 unless predicate boss_fight:enchanted/offhand/riptide run item modify entity @s weapon.offhand boss_fight:endchant/loyalty
execute if score lcg shroomhearth matches 2 if predicate boss_fight:enchanted/offhand/riptide run item modify entity @s weapon.offhand boss_fight:endchant/riptide

# riptide - gets loyalty if channeling is present
execute if score lcg shroomhearth matches 3 unless predicate boss_fight:enchanted/offhand/channeling_or_loyalty run item modify entity @s weapon.offhand boss_fight:endchant/riptide
execute if score lcg shroomhearth matches 3 if predicate boss_fight:enchanted/offhand/channeling_or_loyalty run item modify entity @s weapon.offhand boss_fight:endchant/loyalty

# unset lcg
scoreboard players set lcg shroomhearth -1

# tag player
tag @s add endchant

# show actionbar
tellraw @s [{"color":"white","text":"Your Trident attunes to the "},{"color":"#cc00fa","text":"Ender Dragon"}]

# play sounds & effects
execute at @s run particle minecraft:witch ~ ~0.9 ~ 0.2 0.45 0.2 0.01 20
execute at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 0.5

# grant advancement
advancement grant @s only boss_fight:dragon/endchanted