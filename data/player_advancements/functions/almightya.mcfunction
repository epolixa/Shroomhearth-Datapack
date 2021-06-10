# recalculate total mined stones 
scoreboard players set @s minedStones 0
scoreboard players operation @s minedStones += @s minedStone
scoreboard players operation @s minedStones += @s minedGranite
scoreboard players operation @s minedStones += @s minedDiorite
scoreboard players operation @s minedStones += @s minedAndesite
scoreboard players operation @s minedStones += @s minedTuff
scoreboard players operation @s minedStones += @s minedDeepslate

# grant advancement if stat is reached
advancement grant @s[scores={minedStones=100000..}] only player_advancements:almightya

# revoke triggers
advancement revoke @s only player_advancements:inventory_changed_stone