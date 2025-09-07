# start recalling if possible
#execute as @s[tag=!recalling] if predicate recall:can_cast_recall unless entity @a[tag=recalling,distance=1..] run function recall:start_recalling

# warn the player if another player is recalling
#execute if entity @a[tag=recalling,distance=1..] run tellraw @s "You may not recall while another player is recalling"

# warn the player if they do not have xp
#tellraw @s[level=0] "You do not have enough experience to recall"

tellraw @a[tag=debug_bottle_of_allay] [{"text":"[bottle_of_allay.use_amethyst_bottle] "},{"selector":"@s"},{"text":" used Amethyst Bottle"}]

tag @s add used_amethyst_bottle

playsound minecraft:block.amethyst_block.resonate

# Store nearby Allay
execute as @n[type=minecraft:allay,distance=..5] at @s run function bottle_of_allay:bottle_allay

tag @s remove used_amethyst_bottle
