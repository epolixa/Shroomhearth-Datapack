################################################################
# Main
# main game loop commands that run every tick
################################################################

# Core operations
function bityard:objectives

# Speedy Paths for entities - disabled until we have entity tag definitions in 1.14
#function speedy_paths:entities

# Multi Sleep - execute if playerCount exceeds 1
execute if score Env playerCount matches 2.. run function multi_sleep:main

# End Crystal Ward - only run if an end crystal is loaded?
#execute if entity @e[type=end_crystal,nbt={ShowBottom:0b},limit=1] run function end_crystal_ward:main 
execute if entity @p run function end_crystal_ward:main 