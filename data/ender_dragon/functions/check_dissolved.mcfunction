# this starts executing on a schedule after the dragon has been killed

# if we find a end portal block, we can take it as the dragon's death sequence has finished
# at this point we can grant endchants and run any other functions needed
execute in minecraft:the_end if block 1 61 0 minecraft:end_portal run function ender_dragon:dragon_dissolved

# otherwise, keep checking
execute in minecraft:the_end unless block 1 61 0 minecraft:end_portal run schedule function ender_dragon:check_dissolved 1s