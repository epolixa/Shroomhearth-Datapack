tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:1s/0] Executing function set 0"}]

# Re-calculate online player count global
scoreboard players set PLAYER_COUNT shroomhearth 0
execute as @a run scoreboard players add PLAYER_COUNT shroomhearth 1

# Re-schedule
schedule function shroomhearth:1s/0 1s