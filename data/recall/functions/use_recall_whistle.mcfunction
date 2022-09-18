# start recalling if possible
execute as @s[tag=!recalling] if predicate recall:can_cast_recall unless entity @a[tag=recalling,distance=1..] run function recall:start_recalling

# warn the player if another player is recalling
execute if entity @a[tag=recalling,distance=1..] run tellraw @s "You may not recall while another player is recalling"

# warn the player if they do not have xp
tellraw @s[level=0] "You do not have enough experience to recall"