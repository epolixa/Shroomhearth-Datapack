# Executor: A text display entity summoned for component resolution of the wandering trader's offers
# Position: the text display
# Data: shroomhearth:wandering_trader offers.recipes[0]: {maxUses:int, buy_id:string, sell_id:string}

tellraw @a[tag=debug_wandering_trader] [{"text":"[shroomhearth:wandering_trader/m_set_sell_offer_text] Setting sell offer text for wandering trader with offer data from storage"}]


# Set the json text for the sell offer on the temporary text display entity using the offer data from storage
$data modify entity @s text set value [\
{"color":"gray","text":"Selling "},\
{"color":"gold","nbt":"offers.recipes[0].sell.count","storage":"shroomhearth:wandering_trader"},\
{"text":" "},\
{"color":"green","translate":"item.minecraft.$(sell_id)","fallback":""},\
{"color":"green","translate":"block.minecraft.$(sell_id)","fallback":""},\
{"color":"gray","text":" for "},\
{"color":"gold","nbt":"offers.recipes[0].buy.count","storage":"shroomhearth:wandering_trader"},\
{"text":" "},\
{"color":"green","translate":"item.minecraft.$(buy_id)","fallback":""},\
{"color":"green","translate":"block.minecraft.$(buy_id)","fallback":""}]