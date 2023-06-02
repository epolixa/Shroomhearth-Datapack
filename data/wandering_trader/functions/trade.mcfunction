# grant display advancement if traded with a wandering trader and did not trade for villager wares
advancement grant @s[advancements={wandering_trader:trade=true, wandering_trader:trade_villager_wares=false}] only wandering_trader:exotic_wares

# revoke triggers
advancement revoke @s only wandering_trader:trade
advancement revoke @s only wandering_trader:trade_villager_wares

# give all nearby players a brief trade buff
execute at @e[type=minecraft:wandering_trader,limit=1,sort=nearest] run effect give @a[distance=..16] minecraft:hero_of_the_village 180