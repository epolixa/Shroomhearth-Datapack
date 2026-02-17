# increment score for coloring name
scoreboard players add @s colored_name 1

# grant advancement if player has colored their name several times
advancement grant @s[scores={colored_name=3..}] only shroomhearth:cooperative_sleep/express_myself