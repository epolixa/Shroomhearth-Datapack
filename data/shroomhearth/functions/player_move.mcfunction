#tellraw @a [{"selector":"@s"},{"text":" moved"}]

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

# Update position tracking stuff
function echoes:tag_player_moved

# Revoke advancement
advancement revoke @s only shroomhearth:player_move