# recalculate playerCount - number of online players
scoreboard players set bityard playerCount 0
execute as @a run scoreboard players add bityard playerCount 1

# End Crystal Ward - run if a player is online
execute if entity @p run function mob_warding:second

# Community - only run when more than one player is online
execute if score bityard playerCount matches 2.. run function community:second