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

# Objective for fake player globals
scoreboard objectives add shroomhearth.harmony dummy

# Global count of active spores
scoreboard players set active_spores shroomhearth.harmony 0

# Global timers for spores
scoreboard players set spores_of_armor shroomhearth.harmony 0
scoreboard players set spores_of_ease shroomhearth.harmony 0
scoreboard players set spores_of_egg_hunt shroomhearth.harmony 0
scoreboard players set spores_of_experience shroomhearth.harmony 0
scoreboard players set spores_of_haste shroomhearth.harmony 0
scoreboard players set spores_of_health shroomhearth.harmony 0
scoreboard players set spores_of_insomnia shroomhearth.harmony 0
scoreboard players set spores_of_keeping shroomhearth.harmony 0
scoreboard players set spores_of_leaping shroomhearth.harmony 0
scoreboard players set spores_of_swiftness shroomhearth.harmony 0
scoreboard players set spores_of_strength shroomhearth.harmony 0