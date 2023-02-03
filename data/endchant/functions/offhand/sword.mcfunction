# set lcg
scoreboard players set lcgModulus shroomhearth 8
function shroomhearth:lcg/random

# run item modifiers based on lcg result
execute if score lcg shroomhearth matches 0 run item modify entity @s weapon.offhand endchant:fire_aspect
execute if score lcg shroomhearth matches 1 run item modify entity @s weapon.offhand endchant:looting
execute if score lcg shroomhearth matches 2 run item modify entity @s weapon.offhand endchant:knockback
execute if score lcg shroomhearth matches 3 run item modify entity @s weapon.offhand endchant:sweeping
execute if score lcg shroomhearth matches 4 run item modify entity @s weapon.offhand endchant:unbreaking

# sharpness
execute if score lcg shroomhearth matches 5 unless predicate endchant:enchanted/offhand/smite unless predicate endchant:enchanted/offhand/bane_of_arthropods run item modify entity @s weapon.offhand endchant:sharpness
execute if score lcg shroomhearth matches 5 if predicate endchant:enchanted/offhand/smite run item modify entity @s weapon.offhand endchant:smite
execute if score lcg shroomhearth matches 5 if predicate endchant:enchanted/offhand/bane_of_arthropods run item modify entity @s weapon.offhand endchant:bane_of_arthropods

# smite
execute if score lcg shroomhearth matches 6 unless predicate endchant:enchanted/offhand/sharpness unless predicate endchant:enchanted/offhand/bane_of_arthropods run item modify entity @s weapon.offhand endchant:smite
execute if score lcg shroomhearth matches 6 if predicate endchant:enchanted/offhand/sharpness run item modify entity @s weapon.offhand endchant:sharpness
execute if score lcg shroomhearth matches 6 if predicate endchant:enchanted/offhand/bane_of_arthropods run item modify entity @s weapon.offhand endchant:bane_of_arthropods

# bane of arthropods
execute if score lcg shroomhearth matches 7 unless predicate endchant:enchanted/offhand/smite unless predicate endchant:enchanted/offhand/sharpness run item modify entity @s weapon.offhand endchant:bane_of_arthropods
execute if score lcg shroomhearth matches 7 if predicate endchant:enchanted/offhand/smite run item modify entity @s weapon.offhand endchant:smite
execute if score lcg shroomhearth matches 7 if predicate endchant:enchanted/offhand/sharpness run item modify entity @s weapon.offhand endchant:sharpness

# unset lcg
scoreboard players set lcg shroomhearth -1

# tag player
tag @s add endchant

# show actionbar
tellraw @s [{"color":"white","text":"Your Sword attunes to the "},{"color":"#cc00fa","text":"Ender Dragon"}]

# play sounds & effects
execute at @s run particle minecraft:witch ~ ~0.9 ~ 0.2 0.45 0.2 0.01 20
execute at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 0.5

# grant advancement
advancement grant @s only endchant:endchanted