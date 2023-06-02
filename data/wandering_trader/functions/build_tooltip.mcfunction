# trim some strings
data modify storage wandering_trader:offers recipes[0].sell.Count set string storage wandering_trader:offers recipes[0].sell.Count 0 1
data modify storage wandering_trader:offers recipes[0].sell.id set string storage wandering_trader:offers recipes[0].sell.id 10
data modify storage wandering_trader:offers recipes[0].buy.Count set string storage wandering_trader:offers recipes[0].buy.Count 0 1
data modify storage wandering_trader:offers recipes[0].buy.id set string storage wandering_trader:offers recipes[0].buy.id 10

# set the json text to the temporary sign for component resolution, then copy to tooltip storage
data modify block ~ -64 ~ front_text.messages[0] set value '[{"color":"gold","nbt":"recipes[0].maxUses","storage":"wandering_trader:offers"},{"color":"gray","text":" uses of "},{"color":"gold","nbt":"recipes[0].sell.Count","storage":"wandering_trader:offers"},{"text":" "},{"color":"green","nbt":"recipes[0].sell.id","storage":"wandering_trader:offers"},{"color":"gray","text":" for "},{"color":"gold","nbt":"recipes[0].buy.Count","storage":"wandering_trader:offers"},{"text":" "},{"color":"green","nbt":"recipes[0].buy.id","storage":"wandering_trader:offers"}]'
data modify storage wandering_trader:tooltip line set string block ~ -64 ~ front_text.messages[0]
data modify storage wandering_trader:tooltip text append from storage wandering_trader:tooltip line

# pop offer
data remove storage wandering_trader:offers recipes[0]

# if the wandering trader still has data at index 0 of offers, keep going
execute if data storage wandering_trader:offers recipes[0] run function wandering_trader:build_tooltip