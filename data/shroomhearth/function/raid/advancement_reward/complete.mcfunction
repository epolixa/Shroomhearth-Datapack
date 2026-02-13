# Executor: A player who completed a Raid
# Position: the Player

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:raid/advancement_reward/complete] "},{"selector":"@s"},{"text":" completed a Raid"}]


# check cooldown
execute if score @s time_since_raid_complete matches 48000.. run function shroomhearth:raid/announce_complete

# revoke
advancement revoke @s only shroomhearth:raid/complete