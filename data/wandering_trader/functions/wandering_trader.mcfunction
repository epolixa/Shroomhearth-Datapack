## Found Wandering Trader
## this will simply execute each tick for unnannounced, loaded traders

tag @s add announced
particle minecraft:portal ~ ~1 ~ 0 0 0 1 16
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 1 8
playsound minecraft:entity.wandering_trader.reappeared neutral @a ~ ~ ~ 4.0 1.1 0.5 
tellraw @a [{"text":"The "}, {"color":"blue","text":"Wandering Trader"}, {"text":" is visiting "}, {"selector": "@p"}]
effect give @s minecraft:glowing 120