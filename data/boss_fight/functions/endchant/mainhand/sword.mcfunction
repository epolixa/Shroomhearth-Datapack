# set lcg
scoreboard players set lcgModulus bityard 8
function bityard:lcg/random

# run item modifiers based on lcg result
execute if score lcg bityard matches 0 run item modify entity @s weapon.mainhand boss_fight:endchant/fire_aspect
execute if score lcg bityard matches 1 run item modify entity @s weapon.mainhand boss_fight:endchant/looting
execute if score lcg bityard matches 2 run item modify entity @s weapon.mainhand boss_fight:endchant/knockback
execute if score lcg bityard matches 3 run item modify entity @s weapon.mainhand boss_fight:endchant/sweeping
execute if score lcg bityard matches 4 run item modify entity @s weapon.mainhand boss_fight:endchant/unbreaking

# sharpness
execute if score lcg bityard matches 5 unless predicate boss_fight:enchanted/mainhand/smite unless predicate boss_fight:enchanted/mainhand/bane_of_arthropods run item modify entity @s weapon.mainhand boss_fight:endchant/sharpness
execute if score lcg bityard matches 5 if predicate boss_fight:enchanted/mainhand/smite run item modify entity @s weapon.mainhand boss_fight:endchant/smite
execute if score lcg bityard matches 5 if predicate boss_fight:enchanted/mainhand/bane_of_arthropods run item modify entity @s weapon.mainhand boss_fight:endchant/bane_of_arthropods

# smite
execute if score lcg bityard matches 6 unless predicate boss_fight:enchanted/mainhand/sharpness unless predicate boss_fight:enchanted/mainhand/bane_of_arthropods run item modify entity @s weapon.mainhand boss_fight:endchant/smite
execute if score lcg bityard matches 6 if predicate boss_fight:enchanted/mainhand/sharpness run item modify entity @s weapon.mainhand boss_fight:endchant/sharpness
execute if score lcg bityard matches 6 if predicate boss_fight:enchanted/mainhand/bane_of_arthropods run item modify entity @s weapon.mainhand boss_fight:endchant/bane_of_arthropods

# bane of arthropods
execute if score lcg bityard matches 7 unless predicate boss_fight:enchanted/mainhand/smite unless predicate boss_fight:enchanted/mainhand/sharpness run item modify entity @s weapon.mainhand boss_fight:endchant/bane_of_arthropods
execute if score lcg bityard matches 7 if predicate boss_fight:enchanted/mainhand/smite run item modify entity @s weapon.mainhand boss_fight:endchant/smite
execute if score lcg bityard matches 7 if predicate boss_fight:enchanted/mainhand/sharpness run item modify entity @s weapon.mainhand boss_fight:endchant/sharpness

# unset lcg
scoreboard players set lcg bityard -1

# tag player
tag @s add endchant

# show actionbar
tellraw @s [{"color":"white","text":"Your Sword attunes to the "},{"color":"#cc00fa","text":"Ender Dragon"}]

# play sounds & effects
execute at @s run particle minecraft:witch ~ ~0.9 ~ 0.2 0.45 0.2 0.01 20
execute at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 0.5

# grant advancement
advancement grant @s only boss_fight:dragon/endchanted