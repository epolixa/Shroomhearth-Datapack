# Executes from the context of every Ender Dragon every second

# Initialize the Ender Dragon if it has not been already
execute as @s[tag=!initialized] run function ender_dragon:initialize_ender_dragon

# Capture Ender Dragon health
execute store result score @s bossHealth run data get entity @s Health
scoreboard players set @s bossHealthPercent 100
scoreboard players operation @s bossHealthPercent *= @s bossHealth
scoreboard players operation @s bossHealthPercent /= @s bossMaxHealth

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
execute store result score @s dragonPhase run data get entity @s DragonPhase

# Increment dragStatSlayTime
scoreboard players add dragStatSlayTime shroomhearth 1

# Run Omen Ender Dragon functions
execute as @s[tag=omen_ender_dragon] run function ender_dragon:1s_omen_ender_dragon