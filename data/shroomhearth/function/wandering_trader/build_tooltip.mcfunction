# Executor: A text display entity summoned for component resolution of the wandering trader's offers
# Position: the text display

tellraw @a[tag=debug_wandering_trader] [{"text":"[shroomhearth:wandering_trader/build_tooltip] Building tooltip for wandering trader with offer data from storage"}]


# Trim "minecraft:" namespace from and lift buy and sell item ids
data modify storage shroomhearth:wandering_trader offers.recipes[0].sell_id set string storage shroomhearth:wandering_trader offers.recipes[0].sell.id 10
data modify storage shroomhearth:wandering_trader offers.recipes[0].buy_id set string storage shroomhearth:wandering_trader offers.recipes[0].buy.id 10

# Set the json text to the temporary text display for component resolution
# Uses a macro to set item ids into raw json text translate components
execute if data storage shroomhearth:wandering_trader offers.recipes[0].sell{id:"minecraft:emerald"} run function shroomhearth:wandering_trader/m_set_buy_offer_text with storage shroomhearth:wandering_trader offers.recipes[0]
execute unless data storage shroomhearth:wandering_trader offers.recipes[0].sell{id:"minecraft:emerald"} run function shroomhearth:wandering_trader/m_set_sell_offer_text with storage shroomhearth:wandering_trader offers.recipes[0]

# Copy resolved text from the temporary text display entity to the tooltip storage for later use
data modify storage shroomhearth:wandering_trader tooltip.text append from entity @s text

# pop offer
data remove storage shroomhearth:wandering_trader offers.recipes[0]

# if the wandering trader still has data at index 0 of offers, keep going
execute if data storage shroomhearth:wandering_trader offers.recipes[0] run function shroomhearth:wandering_trader/build_tooltip