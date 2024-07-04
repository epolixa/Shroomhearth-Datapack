# increment score
scoreboard players add @s curedVillagers 1

# grant advancement if stat is reached
advancement grant @s[scores={curedVillagers=27..}] only player_advancements:aerialz

# revoke triggers
advancement revoke @s only player_advancements:cured_villager