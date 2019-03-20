################################################################
# Tick
# main game loop commands that run every tick
################################################################

# Advancement Triggers
#function bityard:advancement_triggers

# Core Bityard functions
function bityard:main

# End Crystal Ward - only run if an end crystal is loaded
execute if entity @e[type=end_crystal,limit=1] run function end_crystal_ward:main 

# Misc Functions
function bityard:spawn_particles
