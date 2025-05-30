# trim some strings
data modify storage wandering_trader:offers recipes[0].sell.id set string storage wandering_trader:offers recipes[0].sell.id 10
data modify storage wandering_trader:offers recipes[0].buy.id set string storage wandering_trader:offers recipes[0].buy.id 10

# set the json text to the temporary text display for component resolution, then copy to tooltip storage
execute if data storage wandering_trader:offers recipes[0].sell{id:"emerald"} run data modify entity @n[tag=wandering_trader_text_display] text set value [{"color":"gray","text":"Buying "},{"color":"gold","nbt":"recipes[0].buy.count","storage":"wandering_trader:offers"},{"text":" "},{"color":"green","nbt":"recipes[0].buy.id","storage":"wandering_trader:offers"},{"color":"gray","text":" for "},{"color":"gold","nbt":"recipes[0].sell.count","storage":"wandering_trader:offers"},{"text":" "},{"color":"green","nbt":"recipes[0].sell.id","storage":"wandering_trader:offers"}]
execute unless data storage wandering_trader:offers recipes[0].sell{id:"emerald"} run data modify entity @n[tag=wandering_trader_text_display] text set value [{"color":"gray","text":"Selling "},{"color":"gold","nbt":"recipes[0].sell.count","storage":"wandering_trader:offers"},{"text":" "},{"color":"green","nbt":"recipes[0].sell.id","storage":"wandering_trader:offers"},{"color":"gray","text":" for "},{"color":"gold","nbt":"recipes[0].buy.count","storage":"wandering_trader:offers"},{"text":" "},{"color":"green","nbt":"recipes[0].buy.id","storage":"wandering_trader:offers"}]
data modify storage wandering_trader:tooltip line set from entity @n[tag=wandering_trader_text_display] text
data modify storage wandering_trader:tooltip text append from storage wandering_trader:tooltip line

# pop offer
data remove storage wandering_trader:offers recipes[0]

# if the wandering trader still has data at index 0 of offers, keep going
execute if data storage wandering_trader:offers recipes[0] run function wandering_trader:build_tooltip