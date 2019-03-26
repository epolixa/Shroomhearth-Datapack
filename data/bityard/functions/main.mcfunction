################################################################
# Tick
# main game loop commands that run every tick
################################################################

# Advancement Triggers
#function bityard:advancement_triggers

# Core Bityard functions
function bityard:modules

# Speedy Paths - only run if a player is online
execute if entity @p run function speedy_paths:main 

# Color Names - execute if there is a sleeping player
execute if entity @p[nbt={Sleeping:1b}] run function color_names:main

# End Crystal Ward - only run if an end crystal is loaded?
#execute if entity @e[type=end_crystal,nbt={ShowBottom:0b},limit=1] run function end_crystal_ward:main 
execute if entity @p run function end_crystal_ward:main 