################################################################
# Tick
# main game loop commands that run every tick
################################################################

# Advancement Triggers
#function bityard:advancement_triggers

# Core Bityard functions
function bityard:main

# Speedy Paths - only run if a player is online
execute if entity @p[limit=1] run function speedy_paths:main 

# End Crystal Ward - only run if an end crystal is loaded?
#execute if entity @e[type=end_crystal,nbt={ShowBottom:0b},limit=1] run function end_crystal_ward:main 
execute if entity @p[limit=1] run function end_crystal_ward:main 

# Misc Functions
function bityard:spawn_particles
