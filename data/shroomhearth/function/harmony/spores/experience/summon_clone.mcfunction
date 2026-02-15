tag @s add double_xp
data modify entity @s Value set from entity @n[tag=double_xp_clone_source] Value
data modify entity @s Motion set from entity @n[tag=double_xp_clone_source] Motion
data modify entity @s Motion[1] set value 0.1