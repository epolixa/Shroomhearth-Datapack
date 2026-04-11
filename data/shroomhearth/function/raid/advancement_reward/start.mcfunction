# Executor: A player who started a Raid
# Position: the Player

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:raid/advancement_reward/started] "},{"selector":"@s"},{"text":" started a Raid"}]


# check cooldown
execute if score @s time_since_raid_start matches 48000.. run function shroomhearth:raid/announce_start

# revoke
advancement revoke @s only shroomhearth:raid/started