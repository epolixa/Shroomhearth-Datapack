################################################################
# Ephemeral Bonbon
# script for ephemral bonbon usage
################################################################

# Spawn particles around spectator throughout duration
particle minecraft:dragon_breath ~ ~1.6 ~ 0.2 0.2 0.2 0.005 1

# Play warning sound near end of duration
execute as @s[scores={etherealBonbon=30}] run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 1 2

# End effects on last tick of duration
execute as @s[scores={etherealBonbon=1}] run function ethereal_bonbon:end 

# Countdown the spectator duration
scoreboard players remove @s etherealBonbon 1