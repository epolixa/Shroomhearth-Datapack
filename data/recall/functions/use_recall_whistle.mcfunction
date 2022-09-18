tellraw @s "use recall whistle"

execute as @s[tag=!recalling] if predicate recall:can_cast_recall unless entity @a[tag=recalling,distance=1..] run function recall:start_recalling

execute if entity @a[tag=recalling,distance=1..] run tellraw @s "Interference"

tellraw @s[level=0] "You do not have enough experience to recall"