# Executor: Player using warped fungus stick
# Position: the Player

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:use_warped_fungus_stick] "},{"selector":"@s"},{"text":" used Warped Fungus Stick"}]

# Reset the use_warped_fungus_stick score
scoreboard players reset @s use_warped_fungus_stick

# Trigger porcelain functionality if the player is holding a porcelain item
execute if predicate shroomhearth:porcelain/holding_porcelain run scoreboard players add @s use_porcelain 1