# Executor: A player who has a non-zero movement tracking score
# Position: The player entity

tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:advancement_reward/player_is_not_active] "},{"selector":"@s"},{"text":" is not active"}]


# Increment player_inactive
scoreboard players add @s player_inactive 1

# Add afk tag after 1 minute of inactivity
execute as @s[tag=!afk,scores={player_inactive=60..}] run function shroomhearth:set_afk

# Revoke advancement
advancement revoke @s only shroomhearth:player_is_not_active