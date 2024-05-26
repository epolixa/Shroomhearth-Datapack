# set lcg
scoreboard players set lcgModulus shroomhearth 10
function shroomhearth:lcg/random

# run item modifiers based on lcg result
execute if score lcg shroomhearth matches 0 run item modify entity @s weapon.offhand endchant:thorns
execute if score lcg shroomhearth matches 1 run item modify entity @s weapon.offhand endchant:feather_falling
execute if score lcg shroomhearth matches 2 run item modify entity @s weapon.offhand endchant:soul_speed
execute if score lcg shroomhearth matches 3 run item modify entity @s weapon.offhand endchant:unbreaking

# depth strider
execute if score lcg shroomhearth matches 4 unless predicate endchant:enchanted/offhand/frost_walker run item modify entity @s weapon.offhand endchant:depth_strider
execute if score lcg shroomhearth matches 4 if predicate endchant:enchanted/offhand/frost_walker run item modify entity @s weapon.offhand endchant:frost_walker

# frost walker
execute if score lcg shroomhearth matches 5 unless predicate endchant:enchanted/offhand/depth_strider run item modify entity @s weapon.offhand endchant:frost_walker
execute if score lcg shroomhearth matches 5 if predicate endchant:enchanted/offhand/depth_strider run item modify entity @s weapon.offhand endchant:depth_strider

# protection
execute if score lcg shroomhearth matches 6 unless predicate endchant:enchanted/offhand/projectile_protection unless predicate endchant:enchanted/offhand/fire_protection unless predicate endchant:enchanted/offhand/blast_protection run item modify entity @s weapon.offhand endchant:protection
execute if score lcg shroomhearth matches 6 if predicate endchant:enchanted/offhand/projectile_protection run item modify entity @s weapon.offhand endchant:projectile_protection
execute if score lcg shroomhearth matches 6 if predicate endchant:enchanted/offhand/fire_protection run item modify entity @s weapon.offhand endchant:fire_protection
execute if score lcg shroomhearth matches 6 if predicate endchant:enchanted/offhand/blast_protection run item modify entity @s weapon.offhand endchant:blast_protection

# projectile protection
execute if score lcg shroomhearth matches 7 unless predicate endchant:enchanted/offhand/protection unless predicate endchant:enchanted/offhand/fire_protection unless predicate endchant:enchanted/offhand/blast_protection run item modify entity @s weapon.offhand endchant:projectile_protection
execute if score lcg shroomhearth matches 7 if predicate endchant:enchanted/offhand/protection run item modify entity @s weapon.offhand endchant:protection
execute if score lcg shroomhearth matches 7 if predicate endchant:enchanted/offhand/fire_protection run item modify entity @s weapon.offhand endchant:fire_protection
execute if score lcg shroomhearth matches 7 if predicate endchant:enchanted/offhand/blast_protection run item modify entity @s weapon.offhand endchant:blast_protection

# fire protection
execute if score lcg shroomhearth matches 8 unless predicate endchant:enchanted/offhand/protection unless predicate endchant:enchanted/offhand/projectile_protection unless predicate endchant:enchanted/offhand/blast_protection run item modify entity @s weapon.offhand endchant:fire_protection
execute if score lcg shroomhearth matches 8 if predicate endchant:enchanted/offhand/projectile_protection run item modify entity @s weapon.offhand endchant:projectile_protection
execute if score lcg shroomhearth matches 8 if predicate endchant:enchanted/offhand/protection run item modify entity @s weapon.offhand endchant:protection
execute if score lcg shroomhearth matches 8 if predicate endchant:enchanted/offhand/blast_protection run item modify entity @s weapon.offhand endchant:blast_protection

# blast protection
execute if score lcg shroomhearth matches 9 unless predicate endchant:enchanted/offhand/protection unless predicate endchant:enchanted/offhand/fire_protection unless predicate endchant:enchanted/offhand/projectile_protection run item modify entity @s weapon.offhand endchant:blast_protection
execute if score lcg shroomhearth matches 9 if predicate endchant:enchanted/offhand/projectile_protection run item modify entity @s weapon.offhand endchant:projectile_protection
execute if score lcg shroomhearth matches 9 if predicate endchant:enchanted/offhand/fire_protection run item modify entity @s weapon.offhand endchant:fire_protection
execute if score lcg shroomhearth matches 9 if predicate endchant:enchanted/offhand/protection run item modify entity @s weapon.offhand endchant:protection

# unset lcg
scoreboard players set lcg shroomhearth -1

# tag player
tag @s add endchant

# show actionbar
tellraw @s [{"color":"white","text":"Your Boots attune to the "},{"color":"#cc00fa","text":"Ender Dragon"}]

# play sounds & effects
execute at @s run particle minecraft:witch ~ ~0.9 ~ 0.2 0.45 0.2 0.01 20
execute at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 0.5

# grant advancement
advancement grant @s only endchant:endchanted