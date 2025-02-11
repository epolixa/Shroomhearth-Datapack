# Executes from an Omen Ender Dragon that is initializing

# Adapt max health to (50 * omen_level) + 200
scoreboard players set @s bossMaxHealth 50
scoreboard players operation @s bossMaxHealth *= @s omen_level
scoreboard players add @s bossMaxHealth 200

execute store result storage ender_dragon ender_dragon.max_health int 1 run scoreboard players get @s bossMaxHealth

function ender_dragon:m_set_base_max_health with storage ender_dragon ender_dragon