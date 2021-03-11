# recalculate playerCount - number of online players
scoreboard players set bityard playerCount 0
execute as @a run scoreboard players add bityard playerCount 1

# Porcelain 1s functions
#execute if entity @p run function porcelain:1s

# Boss fight - run as boss mobs if a player is online
#execute as @e[type=ender_dragon] at @s run function boss_fight:dragon/1s

# Mob Warding - run as a mobs that can be warded
execute as @e[type=#mob_warding:wardable,tag=!unwardable] at @s run function mob_warding:1s

# Wandering Trader announcement - run for unnannounced traders
execute as @e[type=wandering_trader,tag=!announced] at @s run function wandering_trader:1s

# Item Skins - run for unrolled mobs
#execute as @e[type=#item_skins:equipped,tag=!item_skin] run function item_skins:1s

# Community - only run when more than one player is online
execute if score bityard playerCount matches 2.. run function community:1s

# re-schedule
schedule function bityard:1s 1s