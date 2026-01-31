# increment score
scoreboard players add @s curedVillagers 1

# grant advancement if stat is reached
advancement grant @s[scores={curedVillagers=27..}] only challenges:aerialz

# revoke triggers
advancement revoke @s only challenges:cured_villager