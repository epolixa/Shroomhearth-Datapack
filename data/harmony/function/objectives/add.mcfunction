# Added or removed every second based on player proximity,
# triggers growth of Harmony Cap after a certain threshold
scoreboard objectives add harmony dummy

# Number of other players in a group/nearby
scoreboard objectives add player_group dummy

# Number of clustered harmony mushrooms
scoreboard objectives add harmony_cluster dummy

# Count of Harmony Cap items in player inventory
scoreboard objectives add has_harmony_cap dummy

# Flag to allow players to see bossbars for spores timers/progress
scoreboard objectives add show_spores_duration dummy

# Global count of active spores
scoreboard players set active_spores shroomhearth 0

# Global timers for spores
scoreboard players set strength_spores shroomhearth 0