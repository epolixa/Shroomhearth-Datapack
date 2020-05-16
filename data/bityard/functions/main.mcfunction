################################################################
# Main
# main game loop commands that run every tick
################################################################

# Recalculate flags and objectives every tick
function bityard:calculate_objectives

# Community - only run when more than one player is online
execute if score Env playerCount matches 2.. run function community:main

# Multi Sleep - only run when more than one player is online
execute if score Env playerCount matches 2.. run function multi_sleep:main

# Farming XP - execute as players if a crop item entity just appeared
execute if entity @e[type=item,nbt={Age:0s},limit=1] as @a run function farming_xp:main

# Spawn Eggs from Mob Spawners - execute if a mob spawner item entity exists
execute as @e[type=item,nbt={Item:{id:"minecraft:spawner"}}] run function bityard:modules/eggs_from_spawners

# Bleeding particles - execute as players with low health
execute as @a[gamemode=survival,scores={playerHealth=1..10}] run function stat_display:bleeding

# End Crystal Ward - run if a player is online
execute if entity @p run function end_crystal_ward:main

# Wandering Trader announcement - run if a new wandering trader appears
execute if entity @p as @e[type=wandering_trader,tag=!announced] at @s run function wandering_trader:wandering_trader

# Reset objectives
function bityard:reset_objectives