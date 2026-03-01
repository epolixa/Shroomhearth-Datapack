# Executor: Player using warped fungus stick
# Position: the Player

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:used_warped_fungus_on_a_stick] "},{"selector":"@s"},{"text":" used Warped Fungus on a Stick"}]


# Reset the used_warped_fungus_stick score
scoreboard players reset @s used_warped_fungus_on_a_stick

# Trigger porcelain functionality if the player is holding a porcelain item
execute if predicate shroomhearth:porcelain/holding_porcelain as @s[tag=!used_porcelain] run function shroomhearth:porcelain/used_porcelain