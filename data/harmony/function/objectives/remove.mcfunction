# Added or removed every second based on player proximity,
# triggers growth of Harmony Cap after a certain threshold
scoreboard objectives remove harmony

# Number of other players in a group/nearby
scoreboard objectives remove player_group

# Number of clustered harmony mushrooms
scoreboard objectives remove harmony_cluster

# Count of Harmony Cap items in player inventory
scoreboard objectives remove has_harmony_cap

# Flag to allow players to see bossbars for spores timers/progress
scoreboard objectives remove show_timer_bars

# Global count of active spores
scoreboard players reset active_spores shroomhearth


# Global timers for spores
scoreboard players reset spores_of_experience shroomhearth
scoreboard players reset spores_of_haste shroomhearth
scoreboard players reset spores_of_health shroomhearth
scoreboard players reset spores_of_keeping shroomhearth
scoreboard players reset spores_of_leaping shroomhearth
scoreboard players reset spores_of_swiftness shroomhearth
scoreboard players reset spores_of_strength shroomhearth
