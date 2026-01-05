tellraw @a[tag=debug_shroomhearth] [{"text":"[shroomhearth:player_move] "},{"selector":"@s"},{"text":" moved"}]

# Reset tracking scores
scoreboard players reset @s playerAviate
scoreboard players reset @s playerBoat
scoreboard players reset @s playerClimb
scoreboard players reset @s playerCrouch
scoreboard players reset @s playerFall
scoreboard players reset @s playerFly
scoreboard players reset @s playerHorse
scoreboard players reset @s playerMinecart
scoreboard players reset @s playerPig
scoreboard players reset @s playerSprint
scoreboard players reset @s playerStrider
scoreboard players reset @s playerSwim
scoreboard players reset @s playerWalk
scoreboard players reset @s playerWalkOnWater
scoreboard players reset @s playerWalkUnderWater 

# Tag the player as moved so that their echo tracker can update position data on next pulse.
tag @s[gamemode=!spectator] add moved

# Revoke advancement
advancement revoke @s only shroomhearth:player_move