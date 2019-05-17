## Found Wandering Trader
## this will simply execute each tick for unnannounced, loaded traders

tag @s add announced
tellraw @a ["The ", {"color":"blue"}, "Wandering Trader", {"color":"reset"}, " is visiting ", {"selector": "@p"}]