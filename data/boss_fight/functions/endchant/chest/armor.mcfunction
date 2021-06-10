# set lcg
scoreboard players set bityard lcgModulus 6
function bityard:lcg/random

# run item modifiers based on lcg result
execute if score bityard lcg matches 0 run item modify entity @s armor.chest boss_fight:endchant/thorns
execute if score bityard lcg matches 1 run item modify entity @s armor.chest boss_fight:endchant/unbreaking

# protection
execute if score bityard lcg matches 2 unless predicate boss_fight:enchanted/chest/projectile_protection unless predicate boss_fight:enchanted/chest/fire_protection unless predicate boss_fight:enchanted/chest/blast_protection run item modify entity @s armor.chest boss_fight:endchant/protection
execute if score bityard lcg matches 2 if predicate boss_fight:enchanted/chest/projectile_protection run item modify entity @s armor.chest boss_fight:endchant/projectile_protection
execute if score bityard lcg matches 2 if predicate boss_fight:enchanted/chest/fire_protection run item modify entity @s armor.chest boss_fight:endchant/fire_protection
execute if score bityard lcg matches 2 if predicate boss_fight:enchanted/chest/blast_protection run item modify entity @s armor.chest boss_fight:endchant/blast_protection

# projectile protection
execute if score bityard lcg matches 3 unless predicate boss_fight:enchanted/chest/protection unless predicate boss_fight:enchanted/chest/fire_protection unless predicate boss_fight:enchanted/chest/blast_protection run item modify entity @s armor.chest boss_fight:endchant/projectile_protection
execute if score bityard lcg matches 3 if predicate boss_fight:enchanted/chest/protection run item modify entity @s armor.chest boss_fight:endchant/protection
execute if score bityard lcg matches 3 if predicate boss_fight:enchanted/chest/fire_protection run item modify entity @s armor.chest boss_fight:endchant/fire_protection
execute if score bityard lcg matches 3 if predicate boss_fight:enchanted/chest/blast_protection run item modify entity @s armor.chest boss_fight:endchant/blast_protection

# fire protection
execute if score bityard lcg matches 4 unless predicate boss_fight:enchanted/chest/protection unless predicate boss_fight:enchanted/chest/projectile_protection unless predicate boss_fight:enchanted/chest/blast_protection run item modify entity @s armor.chest boss_fight:endchant/fire_protection
execute if score bityard lcg matches 4 if predicate boss_fight:enchanted/chest/projectile_protection run item modify entity @s armor.chest boss_fight:endchant/projectile_protection
execute if score bityard lcg matches 4 if predicate boss_fight:enchanted/chest/protection run item modify entity @s armor.chest boss_fight:endchant/protection
execute if score bityard lcg matches 4 if predicate boss_fight:enchanted/chest/blast_protection run item modify entity @s armor.chest boss_fight:endchant/blast_protection

# blast protection
execute if score bityard lcg matches 5 unless predicate boss_fight:enchanted/chest/protection unless predicate boss_fight:enchanted/chest/fire_protection unless predicate boss_fight:enchanted/chest/projectile_protection run item modify entity @s armor.chest boss_fight:endchant/blast_protection
execute if score bityard lcg matches 5 if predicate boss_fight:enchanted/chest/projectile_protection run item modify entity @s armor.chest boss_fight:endchant/projectile_protection
execute if score bityard lcg matches 5 if predicate boss_fight:enchanted/chest/fire_protection run item modify entity @s armor.chest boss_fight:endchant/fire_protection
execute if score bityard lcg matches 5 if predicate boss_fight:enchanted/chest/protection run item modify entity @s armor.chest boss_fight:endchant/protection

# unset lcg
scoreboard players set bityard lcg -1

# tag player
tag @s add endchant

# show actionbar
tellraw @s [{"color":"white","text":"Your Armor attunes to the "},{"color":"#cc00fa","text":"Ender Dragon"}]

# play sounds & effects
execute at @s run particle minecraft:witch ~ ~0.9 ~ 0.2 0.45 0.2 0.01 20
execute at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 0.5