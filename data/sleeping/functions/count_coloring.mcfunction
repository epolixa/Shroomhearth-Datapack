# increment score for coloring name
scoreboard players add @s coloredName 1

# grant advancement if player has colored their name several times
advancement grant @s[scores={coloredName=3..}] only color_names:color_names