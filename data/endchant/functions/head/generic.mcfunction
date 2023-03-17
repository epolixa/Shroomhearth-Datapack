# run item modifiers
item modify entity @s armor.head endchant:unbreaking

# tag player
tag @s add endchant

# show actionbar
tellraw @s [{"color":"white","text":"Your Equipment attunes to the "},{"color":"#cc00fa","text":"Ender Dragon"}]

# play sounds & effects
execute at @s run particle minecraft:witch ~ ~0.9 ~ 0.2 0.45 0.2 0.01 20
execute at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 0.5

# grant advancement
advancement grant @s only endchant:endchanted