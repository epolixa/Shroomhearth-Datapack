# Executor: Player who ate an Enchanted Golden Chorus Fruit
# Position: The player

tellraw @a[tag=debug_world_border] [{"text":"[world_border:consume_enchanted_golden_chorus_fruit] "},{"selector":"@s"},{"text":" consumed an Enchanted Golden Chorus Fruit"}]


advancement revoke @s only world_border:consume_enchanted_golden_chorus_fruit

# Capture current world border diameter in score and divide it by 2 to get radius
execute store result score enchanted_golden_chorus_fruit_max_range shroomhearth.world_border run worldborder get
scoreboard players operation enchanted_golden_chorus_fruit_max_range shroomhearth.world_border /= enchanted_golden_chorus_fruit_max_range_divisor shroomhearth.world_border

# Capture enchanted golden chorus fruit maxRange into storage from score
execute store result storage shroomhearth:world_border enchanted_golden_chorus_fruit.maxRange int 1 run scoreboard players get enchanted_golden_chorus_fruit_max_range shroomhearth.world_border

# Run macro with storage data
function world_border:m_consume_enchanted_golden_chorus_fruit with storage shroomhearth:world_border enchanted_golden_chorus_fruit

advancement grant @s only world_border:spontaneous_adventure