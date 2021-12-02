# recalculate playerCount - number of online players
scoreboard players set playerCount shroomhearth 0
execute as @a run scoreboard players add playerCount shroomhearth 1

# Porcelain 1s functions
execute if entity @p run function porcelain:1s

# Boss fight - run as boss mobs if a player is online
execute as @e[type=minecraft:ender_dragon] at @s run function boss_fight:dragon/1s
execute as @e[type=minecraft:wither] at @s run function boss_fight:wither/1s

# Dragon kill fix - if a player is near the main end island and there is no dragon and dragonSlain is 0 then manually run dragon slain function
execute in the_end positioned 0 64 0 as @p[distance=..200] unless entity @e[type=ender_dragon] if score shroomhearth dragonSlain matches 0 run function boss_fight:dragon/player_kill

# Mob Warding - run as a mobs that can be warded
execute as @e[type=#mob_warding:wardable,tag=!unwardable] at @s run function mob_warding:1s_mob

# End Crystal range vision - run as players wearing a mob head
execute as @a[predicate=mob_warding:end_crystal_vision] at @s run function mob_warding:1s_player

# Wandering Trader announcement - run for unnannounced traders
execute as @e[type=wandering_trader,tag=!announced] at @s run function wandering_trader:1s

# Item Skins - run for unrolled mobs
execute as @e[type=#item_skins:armed,tag=!item_skin] run function item_skins:1s

# Community - only run when more than one player is online
execute if score playerCount shroomhearth matches 2.. run function community:1s

# re-schedule
schedule function shroomhearth:1s 1s