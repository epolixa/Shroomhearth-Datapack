################################################################
# Objectives
# controls global flags and trackers that dont have their own module 
################################################################

# playerCount - number of online players
execute as @a run scoreboard players add Env playerCount 1

# entityHealth - set to entity's health every tick
#execute as @e store result score @s entityHealth run data get entity @s Health

# viewPitch
#execute as @a store result score @s viewPitch run data get entity @s Rotation[1]

# motionY
#execute as @a store result score @s motionY run data get entity @s Motion[1] 10

# entityTicks
#scoreboard players add @e entityTicks 1
