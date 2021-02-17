# recalculate playerCount - number of online players
scoreboard players set bityard playerCount 0
execute as @a run scoreboard players add bityard playerCount 1

# End Crystal Ward - run if a player is online
execute if entity @p run function mob_warding:second