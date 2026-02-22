# Executor: an Ender Dragon every second
# Position: The Ender Dragon

#tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/1s_ender_dragon] Pulsing Ender Dragon..."}]


# Initialize the Ender Dragon if it has not been already
execute as @s[tag=!initialized] run function shroomhearth:ender_dragon/initialize_ender_dragon

# Capture Ender Dragon health
execute store result score @s health run data get entity @s Health
scoreboard players set @s health_percent 100
scoreboard players operation @s health_percent *= @s health
scoreboard players operation @s health_percent /= @s max_health

# Capture DragonPhase
# 0 - Circling
# 1 - Strafing (preparing fireball)
# 2 - Flying to portal to land
# 3 - Landing on portal
# 4 - Taking off from portal
# 5 - Landed on portal, using breath attack
# 6 - Landed on portal, preparing breath attack
# 7 - Landed on portal, roar before using breath attack
# 8 - Charging player
# 9 - Flying to portal to die
# 10 - Hovering (NoAI)
execute store result score @s ender_dragon_phase run data get entity @s DragonPhase

# Increment ender_dragon_stats_fight_time
scoreboard players add ender_dragon_stats_fight_time shroomhearth.ender_dragon 1

# Run Omen Ender Dragon functions
execute as @s[tag=omen_ender_dragon] run function shroomhearth:ender_dragon/1s_omen_ender_dragon