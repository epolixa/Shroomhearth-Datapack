#tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:1s/0] Executing function set 0"}]


# Re-calculate online player count global
scoreboard players set player_count shroomhearth 0
execute as @a run scoreboard players add player_count shroomhearth 1

# Re-schedule
schedule function shroomhearth:1s/0 1s