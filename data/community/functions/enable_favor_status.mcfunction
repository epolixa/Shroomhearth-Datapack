# Toggle the player's ability to view favor status bossbars

# Enable it
scoreboard players set @s showFavorProgress 1

# Inform player
tellraw @s [{"translate":"community.favor.status_enabled"}]