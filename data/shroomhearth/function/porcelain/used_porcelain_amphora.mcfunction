# Executor: A Player that used a Porcelain Amphora
# Position: The Player

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/used_porcelain_amphora] "},{"selector":"@s"},{"text":" used a Porcelain Amphora"}]


# Mark the player as having used a Porcelain Amphora
tag @s add used_porcelain_amphora

# Interrupt Echo Horn use
#execute if predicate shroomhearth:echo_horn/using_echo_horn run function shroomhearth:echo_horn/interrupt_echo_horn

# If the player is in the Porcelain, exit the Porcelain
execute if predicate shroomhearth:porcelain/in_the_porcelain run function shroomhearth:porcelain/exit_the_porcelain

# If the player is not in the Porcelain, attempt to enter the Porcelain
execute unless predicate shroomhearth:porcelain/in_the_porcelain run function shroomhearth:porcelain/attempt_to_enter_the_porcelain

# Remove all tags
function shroomhearth:porcelain/remove_tags