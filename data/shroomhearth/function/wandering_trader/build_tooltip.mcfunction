# Executor: A text display entity summoned for component resolution of the wandering trader's offers
# Position: the text display

tellraw @a[tag=debug_wandering_trader] [{"text":"[shroomhearth:wandering_trader/build_tooltip] Building tooltip for wandering trader with offer data from storage"}]


# trim some strings
data modify storage shroomhearth:wandering_trader offers.recipes[0].sell.id set string storage shroomhearth:wandering_trader offers.recipes[0].sell.id 10
data modify storage shroomhearth:wandering_trader offers.recipes[0].buy.id set string storage shroomhearth:wandering_trader offers.recipes[0].buy.id 10

# set the json text to the temporary text display for component resolution, then copy to tooltip storage
execute if data storage shroomhearth:wandering_trader offers.recipes[0].sell{id:"emerald"} run data modify entity @s text set value [{"color":"gray","text":"Buying "},{"color":"gold","nbt":"offers.recipes[0].buy.count","storage":"shroomhearth:wandering_trader"},{"text":" "},{"color":"green","nbt":"offers.recipes[0].buy.id","storage":"shroomhearth:wandering_trader"},{"color":"gray","text":" for "},{"color":"gold","nbt":"offers.recipes[0].sell.count","storage":"shroomhearth:wandering_trader"},{"text":" "},{"color":"green","nbt":"offers.recipes[0].sell.id","storage":"shroomhearth:wandering_trader"}]
execute unless data storage shroomhearth:wandering_trader offers.recipes[0].sell{id:"emerald"} run data modify entity @s text set value [{"color":"gray","text":"Selling "},{"color":"gold","nbt":"offers.recipes[0].sell.count","storage":"shroomhearth:wandering_trader"},{"text":" "},{"color":"green","nbt":"offers.recipes[0].sell.id","storage":"shroomhearth:wandering_trader"},{"color":"gray","text":" for "},{"color":"gold","nbt":"offers.recipes[0].buy.count","storage":"shroomhearth:wandering_trader"},{"text":" "},{"color":"green","nbt":"offers.recipes[0].buy.id","storage":"shroomhearth:wandering_trader"}]
data modify storage shroomhearth:wandering_trader tooltip.line set from entity @s text
data modify storage shroomhearth:wandering_trader tooltip.text append from storage shroomhearth:wandering_trader tooltip.line

# pop offer
data remove storage shroomhearth:wandering_trader offers.recipes[0]

# if the wandering trader still has data at index 0 of offers, keep going
execute if data storage shroomhearth:wandering_trader offers.recipes[0] run function shroomhearth:wandering_trader/build_tooltip