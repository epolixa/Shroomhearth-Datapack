# Executor: A player who just interacted with a wandering trader
# Position: the player

tellraw @a[tag=debug_wandering_trader] [{"text":"[shroomhearth:wandering_trader/advancement_reward/player_interacted_with_wandering_trader] "},{"selector":"@s"},{"text":" interacted with a wandering trader"}]


# revoke trigger
advancement revoke @s only shroomhearth:wandering_trader/player_interacted_with_wandering_trader

# tag the trader for delayed announcement
tag @n[type=minecraft:wandering_trader,tag=!interacted,tag=!announced] add interacted

# schedule announcement in 1 second
schedule function shroomhearth:wandering_trader/scheduled_announcement 1s
