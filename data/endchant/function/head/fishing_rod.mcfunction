# set lcg
scoreboard players set lcgModulus shroomhearth 3
function shroomhearth:lcg/random

# run item modifiers based on lcg result
execute if score lcg shroomhearth matches 0 run item modify entity @s armor.head endchant:lure
execute if score lcg shroomhearth matches 1 run item modify entity @s armor.head endchant:luck_of_the_sea
execute if score lcg shroomhearth matches 2 run item modify entity @s armor.head endchant:unbreaking

# unset lcg
scoreboard players set lcg shroomhearth -1

# tag player
tag @s add endchant

# show actionbar
tellraw @s [{"color":"white","text":"Your Fishing Rod attunes to the "},{"color":"#cc00fa","text":"Ender Dragon"}]

# play sounds & effects
execute at @s run particle minecraft:witch ~ ~0.9 ~ 0.2 0.45 0.2 0.01 20
execute at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 0.5

# grant advancement
advancement grant @s only endchant:endchanted