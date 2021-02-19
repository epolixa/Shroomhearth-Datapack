# recalculate playerCount - number of online players
scoreboard players set bityard playerCount 0
execute as @a run scoreboard players add bityard playerCount 1

# Boss fight - run as boss mobs if a player is online
execute if entity @p in minecraft:the_end as @e[type=ender_dragon] at @s run function boss_fight:second_dragon

# End Crystal Ward - run if player is online and dragon has been slain and there is a loaded end crystal
execute if entity @p if score bityard dragonSlain matches 1 if entity @e[type=minecraft:end_crystal,nbt={ShowBottom:0b}] run function mob_warding:second

# Wandering Trader announcement - run for unnannounced traders
execute as @e[type=wandering_trader,tag=!announced] at @s run function wandering_trader:wandering_trader

# Community - only run when more than one player is online
execute if score bityard playerCount matches 2.. run function community:second