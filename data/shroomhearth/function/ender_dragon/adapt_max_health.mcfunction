# Executor: an Omen Ender Dragon that is initializing
# Position: The Omen Ender Dragon

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/adapt_max_health] Adapting Ender Dragon max health"}]


# Adapt max health to (50 * omen_level) + 200
scoreboard players set @s max_health 50
scoreboard players operation @s max_health *= @s omen_level
scoreboard players add @s max_health 200

execute store result storage shroomhearth:ender_dragon max_health int 1 run scoreboard players get @s max_health

function shroomhearth:ender_dragon/m_set_base_max_health with storage shroomhearth:ender_dragon