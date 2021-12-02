# set lcg
scoreboard players set lcgModulus shroomhearth 7
function shroomhearth:lcg/random

# run item modifiers based on lcg result
execute if score lcg shroomhearth matches 0 run item modify entity @s weapon.mainhand boss_fight:endchant/respiration
execute if score lcg shroomhearth matches 1 run item modify entity @s weapon.mainhand boss_fight:endchant/thorns
execute if score lcg shroomhearth matches 2 run item modify entity @s weapon.mainhand boss_fight:endchant/unbreaking

# protection
execute if score lcg shroomhearth matches 3 unless predicate boss_fight:enchanted/mainhand/projectile_protection unless predicate boss_fight:enchanted/mainhand/fire_protection unless predicate boss_fight:enchanted/mainhand/blast_protection run item modify entity @s weapon.mainhand boss_fight:endchant/protection
execute if score lcg shroomhearth matches 3 if predicate boss_fight:enchanted/mainhand/projectile_protection run item modify entity @s weapon.mainhand boss_fight:endchant/projectile_protection
execute if score lcg shroomhearth matches 3 if predicate boss_fight:enchanted/mainhand/fire_protection run item modify entity @s weapon.mainhand boss_fight:endchant/fire_protection
execute if score lcg shroomhearth matches 3 if predicate boss_fight:enchanted/mainhand/blast_protection run item modify entity @s weapon.mainhand boss_fight:endchant/blast_protection

# projectile protection
execute if score lcg shroomhearth matches 4 unless predicate boss_fight:enchanted/mainhand/protection unless predicate boss_fight:enchanted/mainhand/fire_protection unless predicate boss_fight:enchanted/mainhand/blast_protection run item modify entity @s weapon.mainhand boss_fight:endchant/projectile_protection
execute if score lcg shroomhearth matches 4 if predicate boss_fight:enchanted/mainhand/protection run item modify entity @s weapon.mainhand boss_fight:endchant/protection
execute if score lcg shroomhearth matches 4 if predicate boss_fight:enchanted/mainhand/fire_protection run item modify entity @s weapon.mainhand boss_fight:endchant/fire_protection
execute if score lcg shroomhearth matches 4 if predicate boss_fight:enchanted/mainhand/blast_protection run item modify entity @s weapon.mainhand boss_fight:endchant/blast_protection

# fire protection
execute if score lcg shroomhearth matches 5 unless predicate boss_fight:enchanted/mainhand/protection unless predicate boss_fight:enchanted/mainhand/projectile_protection unless predicate boss_fight:enchanted/mainhand/blast_protection run item modify entity @s weapon.mainhand boss_fight:endchant/fire_protection
execute if score lcg shroomhearth matches 5 if predicate boss_fight:enchanted/mainhand/projectile_protection run item modify entity @s weapon.mainhand boss_fight:endchant/projectile_protection
execute if score lcg shroomhearth matches 5 if predicate boss_fight:enchanted/mainhand/protection run item modify entity @s weapon.mainhand boss_fight:endchant/protection
execute if score lcg shroomhearth matches 5 if predicate boss_fight:enchanted/mainhand/blast_protection run item modify entity @s weapon.mainhand boss_fight:endchant/blast_protection

# blast protection
execute if score lcg shroomhearth matches 6 unless predicate boss_fight:enchanted/mainhand/protection unless predicate boss_fight:enchanted/mainhand/fire_protection unless predicate boss_fight:enchanted/mainhand/projectile_protection run item modify entity @s weapon.mainhand boss_fight:endchant/blast_protection
execute if score lcg shroomhearth matches 6 if predicate boss_fight:enchanted/mainhand/projectile_protection run item modify entity @s weapon.mainhand boss_fight:endchant/projectile_protection
execute if score lcg shroomhearth matches 6 if predicate boss_fight:enchanted/mainhand/fire_protection run item modify entity @s weapon.mainhand boss_fight:endchant/fire_protection
execute if score lcg shroomhearth matches 6 if predicate boss_fight:enchanted/mainhand/protection run item modify entity @s weapon.mainhand boss_fight:endchant/protection

# unset lcg
scoreboard players set lcg shroomhearth -1

# tag player
tag @s add endchant

# show actionbar
tellraw @s [{"color":"white","text":"Your Helmet attunes to the "},{"color":"#cc00fa","text":"Ender Dragon"}]

# play sounds & effects
execute at @s run particle minecraft:witch ~ ~0.9 ~ 0.2 0.45 0.2 0.01 20
execute at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 0.5

# grant advancement
advancement grant @s only boss_fight:dragon/endchanted