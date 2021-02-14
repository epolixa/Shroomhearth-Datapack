# tag all wandering traders that have not been announced
tag @s add announced

# summon particle to make it look like he teleported
particle minecraft:portal ~ ~1 ~ 0 0 0 1 16
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 1 8

# play sound to players within render distance to alert his appearance
playsound minecraft:entity.wandering_trader.reappeared neutral @a[distance=..48] ~ ~ ~ 1.0 1.1 0.5 

# announce appearance
tellraw @a [{"text":"The "}, {"color":"blue","text":"Wandering Trader"}, {"text":" is visiting "}, {"selector": "@p"}]

# make him glow briefly so players can find him
effect give @s minecraft:glowing 8

# also make his llamas glow
effect give @e[type=minecraft:trader_llama,distance=..48,limit=2,sort=nearest] minecraft:glowing 8