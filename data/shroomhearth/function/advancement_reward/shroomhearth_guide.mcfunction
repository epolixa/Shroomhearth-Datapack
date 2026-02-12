# Executor: A player who has just been granted the Shroomhearth Guide advancement
# Position: The player entity

# Shroomhearth Guide is a special case of a displayed progressional advancement that we also want to trigger additional setup for new players with.

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:advancement_reward/shroomhearth_guide] Player "},{"selector":"@s"},{"color":"white","text":" granted Shroomhearth Guide advancement"}]


# Grant challenges and stories guide advancement
advancement grant @s only shroomhearth:shroomhearth_challenges
advancement grant @s only shroomhearth:shroomhearth_stories

# Consider the player as relogging
function shroomhearth:player_relog