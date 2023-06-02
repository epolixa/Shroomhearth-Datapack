# grant display advancement if traded with a wandering trader and did not trade for villager wares
advancement grant @s[advancements={wandering_trader:trade=true, wandering_trader:trade_villager_wares=false}] only wandering_trader:exotic_wares

# revoke triggers
advancement revoke @s only wandering_trader:trade_dummy
advancement revoke @s only wandering_trader:trade_villager_wares