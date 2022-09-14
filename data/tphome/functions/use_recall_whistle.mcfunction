tellraw @s "use recall whistle"

#stopsound @s record item.goat_horn.sound.5

execute as @s[tag=!recalling] if predicate tphome:can_cast_recall run function tphome:start_recalling

tellraw @s[level=0] "You do not have enough experience to recall"