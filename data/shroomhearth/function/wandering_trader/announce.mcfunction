# Executor: A Wandering Trader that has not yet been announced
# Position: the Trader

tellraw @a[tag=debug_wandering_trader] [{"text":"[shroomhearth:wandering_trader/announce] Announcing "},{"selector":"@s"}]


# Summon temporary text display for text component resolution
summon minecraft:text_display ~ ~ ~ {Tags:["wandering_trader_text_display"]}

# Preset storage with copy of trader's offers
data modify storage shroomhearth:wandering_trader offers.recipes set from entity @s Offers.Recipes

# Recursively build tooltip from offer list
data modify storage shroomhearth:wandering_trader tooltip.text set value [{"text":"Wandering Trader offers:"}]
execute as @n[tag=wandering_trader_text_display] at @s run function shroomhearth:wandering_trader/build_tooltip

# Remove temporary text display
kill @n[tag=wandering_trader_text_display]

# Set position scores
function shroomhearth:score_coordinates

# Complete announcement
tellraw @a [{"text":"The "}, {"color":"#435f91","text":"[Wandering Trader]","hover_event":{"action":"show_text","value":{"nbt":"tooltip.text[]","storage":"shroomhearth:wandering_trader","separator":"\n","interpret":true}}}, {"text":" is visiting "}, {"selector": "@p"}, {"text": " at "}, {"score":{"name":"@s","objective":"pos_x"}}, {"text": ", "}, {"score":{"name":"@s","objective":"pos_y"}}, {"text": ", "}, {"score":{"name":"@s","objective":"pos_z"}}]

# Remove glowing
effect clear @s minecraft:glowing
effect clear @e[type=minecraft:trader_llama,distance=..48,limit=2,sort=nearest] minecraft:glowing

# Tag so that it won't be announced again
tag @s add announced