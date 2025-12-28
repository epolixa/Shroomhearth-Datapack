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
scoreboard objectives add show_timer_bars dummy

# Global count of active spores
scoreboard players set active_spores shroomhearth 0

# Global timers for spores
scoreboard players set spores_of_armor shroomhearth 0
scoreboard players set spores_of_experience shroomhearth 0
scoreboard players set spores_of_haste shroomhearth 0
scoreboard players set spores_of_health shroomhearth 0
scoreboard players set spores_of_keeping shroomhearth 0
scoreboard players set spores_of_leaping shroomhearth 0
scoreboard players set spores_of_swiftness shroomhearth 0
scoreboard players set spores_of_strength shroomhearth 0
