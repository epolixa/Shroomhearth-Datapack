scoreboard players reset @s useWarpedFungusStick

execute if predicate porcelain:holding_porcelain run scoreboard players add @s usePorcelain 1

execute if predicate recall:holding_recall_whistle run function recall:use_recall_whistle

execute if predicate bottle_of_allay:holding_amethyst_bottle run function bottle_of_allay:use_amethyst_bottle
