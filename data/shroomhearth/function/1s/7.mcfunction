#tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:1s/7] Executing function set 7"}]


# Drop seats in invalid positions
execute as @e[tag=seat_interaction] at @s if block ~ ~-0.0625 ~ #shroomhearth:seats/intangible run function shroomhearth:seats/drop_seat

# Process Ender Tome entities
execute as @e[tag=ender_tome] at @s run function shroomhearth:ender_tome/1s_ender_tome

# Re-schedule
schedule function shroomhearth:1s/7 1s