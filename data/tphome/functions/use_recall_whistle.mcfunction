tellraw @s "use recall whistle"

#stopsound @s record item.goat_horn.sound.5

execute as @s[tag=!recalling,tag=!cast_recall] if predicate tphome:can_cast_recall run function tphome:start_recalling