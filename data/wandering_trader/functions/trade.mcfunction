# grant display advancement if traded with a wandering trader and did not trade for villager wares
advancement grant @s[advancements={wandering_trader:trade=true, wandering_trader:trade_villager_wares=false}] only wandering_trader:exotic_wares

# revoke triggers
advancement revoke @s only wandering_trader:trade
advancement revoke @s only wandering_trader:trade_villager_wares

# give player a brief trade buff
effect give @s minecraft:hero_of_the_village 180

# grant harmony for all nearby players if there are more than one player near the trader
execute at @e[type=minecraft:wandering_trader,sort=nearest,limit=1] run scoreboard players add @a[distance=..16,scores={playerGroup=2..}] harmony 1