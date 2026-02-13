# Executor: A player who just traded with a wandering trader
# Position: the player

tellraw @a[tag=debug_wandering_trader] [{"text":"[shroomhearth:wandering_trader/advancement_reward/wandering_trader_trade] "},{"selector":"@s"},{"text":" traded with a wandering trader"}]


# grant display advancement if traded with a wandering trader and did not trade for villager wares
advancement grant @s[advancements={shroomhearth:wandering_trader/wandering_trader_trade=true, shroomhearth:wandering_trader/wandering_trader_trade_villager_offers=false}] only shroomhearth:wandering_trader/exotic_wares

# revoke triggers
advancement revoke @s only shroomhearth:wandering_trader/wandering_trader_trade
advancement revoke @s only shroomhearth:wandering_trader/wandering_trader_trade_villager_offers

# give player a brief trade buff
effect give @s minecraft:hero_of_the_village 180

# grant harmony for all nearby players if there are more than one player near the trader
execute at @n[type=minecraft:wandering_trader] run scoreboard players add @a[distance=..16,scores={player_group=2..}] harmony 1