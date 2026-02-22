# Executor: Initially, a player who has killed the Omen Ender Dragon, then repeats on a schedule every second until the dragon has finished dissolving
# Position: The player, then from Spawn

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/check_dissolved] Checking if Ender Dragon has finished dissolving"}]


# if we find a end portal block, we can take it as the dragon's death sequence has finished
# at this point we can grant endchants and run any other functions needed
execute in minecraft:the_end if block 1 61 0 minecraft:end_portal run function shroomhearth:ender_dragon/dragon_dissolved

# otherwise, keep checking
execute in minecraft:the_end unless block 1 61 0 minecraft:end_portal run schedule function shroomhearth:ender_dragon/check_dissolved 1s