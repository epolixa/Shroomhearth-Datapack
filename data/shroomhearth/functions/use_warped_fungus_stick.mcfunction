scoreboard players reset @s useWarpedFungusStick

execute if predicate porcelain:holding_porcelain run scoreboard players add @s usePorcelain 1

execute if predicate tphome:holding_recall_whistle run function tphome:use_recall_whistle