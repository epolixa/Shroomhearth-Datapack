# Executor: A Player who stopped using a Porcelain and should have all relevant tags removed
# Position: The Player

tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/remove_tags] Removing all Porcelain tags from "},{"selector":"@s"}]


# Remove all porcelain related tags from the player
tag @s remove used_porcelain
tag @s remove used_porcelain_in_overworld
tag @s remove used_porcelain_in_the_nether
tag @s remove used_porcelain_in_the_end
tag @s remove exiting_porcelain
tag @s remove found_porcelain_anchor