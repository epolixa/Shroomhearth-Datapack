# grant advancement if stat is reached
advancement grant @s[advancements={wandering_trader:trade_dummy=true, wandering_trader:trade_villager_wares=false}] only wandering_trader:exotic_wares

# revoke triggers
advancement revoke @s only wandering_trader:trade_dummy
advancement revoke @s only wandering_trader:trade_villager_wares