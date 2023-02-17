# set lcg
scoreboard players set lcgModulus shroomhearth 6
function shroomhearth:lcg/random

# run item modifiers based on lcg result
execute if score lcg shroomhearth matches 0 run item modify entity @s armor.head endchant:efficiency
execute if score lcg shroomhearth matches 1 run item modify entity @s armor.head endchant:unbreaking

# fortune - gets unbreaking instead if silk touch is present
execute if score lcg shroomhearth matches 2 unless predicate endchant:enchanted/head/silk_touch run item modify entity @s armor.head endchant:fortune
execute if score lcg shroomhearth matches 2 if predicate endchant:enchanted/head/silk_touch run item modify entity @s armor.head endchant:unbreaking

# sharpness
execute if score lcg shroomhearth matches 3 unless predicate endchant:enchanted/head/smite unless predicate endchant:enchanted/head/bane_of_arthropods run item modify entity @s armor.head endchant:sharpness
execute if score lcg shroomhearth matches 3 if predicate endchant:enchanted/head/smite run item modify entity @s armor.head endchant:smite
execute if score lcg shroomhearth matches 3 if predicate endchant:enchanted/head/bane_of_arthropods run item modify entity @s armor.head endchant:bane_of_arthropods

# smite
execute if score lcg shroomhearth matches 4 unless predicate endchant:enchanted/head/sharpness unless predicate endchant:enchanted/head/bane_of_arthropods run item modify entity @s armor.head endchant:smite
execute if score lcg shroomhearth matches 4 if predicate endchant:enchanted/head/sharpness run item modify entity @s armor.head endchant:sharpness
execute if score lcg shroomhearth matches 4 if predicate endchant:enchanted/head/bane_of_arthropods run item modify entity @s armor.head endchant:bane_of_arthropods

# bane of arthropods
execute if score lcg shroomhearth matches 5 unless predicate endchant:enchanted/head/smite unless predicate endchant:enchanted/head/sharpness run item modify entity @s armor.head endchant:bane_of_arthropods
execute if score lcg shroomhearth matches 5 if predicate endchant:enchanted/head/smite run item modify entity @s armor.head endchant:smite
execute if score lcg shroomhearth matches 5 if predicate endchant:enchanted/head/sharpness run item modify entity @s armor.head endchant:sharpness

# unset lcg
scoreboard players set lcg shroomhearth -1

# tag player
tag @s add endchant

# show actionbar
tellraw @s [{"color":"white","text":"Your Axe attunes to the "},{"color":"#cc00fa","text":"Ender Dragon"}]

# play sounds & effects
execute at @s run particle minecraft:witch ~ ~0.9 ~ 0.2 0.45 0.2 0.01 20
execute at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 0.5

# grant advancement
advancement grant @s only endchant:endchanted