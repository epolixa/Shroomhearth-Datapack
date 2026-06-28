# Executor: A Wandering Trader that just spawned and has not yet been highlighted
# Position: the Trader

tellraw @a[tag=debug_wandering_trader] [{"text":"[shroomhearth:wandering_trader/highlight] Highlighting "},{"selector":"@s"}]


# Make him glow briefly so players can find him
effect give @s minecraft:glowing 64

# Also make his llamas glow
effect give @e[type=minecraft:trader_llama,distance=..48,limit=2,sort=nearest] minecraft:glowing 64

# Summon particle to make it look like he teleported
particle minecraft:portal ~ ~1 ~ 0 0 0 1 16
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 1 8

# Play sound to players within render distance to alert his appearance
playsound minecraft:entity.wandering_trader.reappeared neutral @a[distance=..48] ~ ~ ~ 1.0 1.1 0.5 

# Tag as highlighted
tag @s add highlighted 