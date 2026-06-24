# Executor: A player who just interacted with a wandering trader
# Position: the player

tellraw @a[tag=debug_wandering_trader] [{"text":"[shroomhearth:wandering_trader/advancement_reward/player_interacted_with_wandering_trader] "},{"selector":"@s"},{"text":" interacted with a wandering trader"}]


# revoke trigger
advancement revoke @s only shroomhearth:wandering_trader/player_interacted_with_wandering_trader

# announce the trader
execute as @n[type=minecraft:wandering_trader,tag=!announced] at @s run function shroomhearth:wandering_trader/announce
