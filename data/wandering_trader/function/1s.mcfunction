# tag all wandering traders that have not been announced
tag @s add announced

# summon particle to make it look like he teleported
particle minecraft:portal ~ ~1 ~ 0 0 0 1 16
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 1 8

# play sound to players within render distance to alert his appearance
playsound minecraft:entity.wandering_trader.reappeared neutral @a[distance=..48] ~ ~ ~ 1.0 1.1 0.5 

# announce appearance..
# summon temporary text display for component resolution
summon minecraft:text_display ~ ~ ~ {Tags:["wandering_trader_text_display"]}
# preset storage with copy of trader's offers
data modify storage wandering_trader:offers recipes set from entity @s Offers.Recipes
# recursively build tooltip from offer list
data modify storage wandering_trader:tooltip text set value [{"text":"Offers:"}]
function wandering_trader:build_tooltip

# remove temporary text display
kill @n[tag=wandering_trader_text_display]

# set position scores
function shroomhearth:score_coordinates
# complete announcement
tellraw @a [{"text":"The "}, {"color":"#435f91","text":"Wandering Trader","hover_event":{"action":"show_text","value":{"nbt":"text[]","storage":"wandering_trader:tooltip","separator":"\n","interpret":true}}}, {"text":" is visiting "}, {"selector": "@p"}, {"text": " at "}, {"score":{"name":"@s","objective":"pos_x"}}, {"text": ", "}, {"score":{"name":"@s","objective":"pos_y"}}, {"text": ", "}, {"score":{"name":"@s","objective":"pos_z"}}]

# make him glow briefly so players can find him
effect give @s minecraft:glowing 20

# also make his llamas glow
effect give @e[type=minecraft:trader_llama,distance=..48,limit=2,sort=nearest] minecraft:glowing 20