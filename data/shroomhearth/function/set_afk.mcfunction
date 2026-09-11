# Executor: A player who has been inactive for a period of time and is not yet tagged as afk
# Position: The player entity

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:set_afk] "},{"selector":"@s"},{"text":" has gone afk"}]


# Add afk tag
tag @s add afk