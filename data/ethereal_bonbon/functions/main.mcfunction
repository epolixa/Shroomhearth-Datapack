################################################################
# Ephemeral Bonbon
# script for ephemral bonbon usage
################################################################

# Spawn particles around spectator throughout duration
execute as @a[scores={etherealBonbon=1..}] at @s run particle minecraft:dragon_breath ~ ~1.6 ~ 0.2 0.2 0.2 0.005 1

# Put player back in survival mode on last tick of duration
execute as @a[scores={etherealBonbon=1},gamemode=spectator] run gamemode survival @s

# Play sound near end of duration
execute as @a[scores={etherealBonbon=30}] at @s run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 1 2

# Play sound on last tick of duration
execute as @a[scores={etherealBonbon=1}] at @s run playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 1.1

# Countdown the spectator duration
execute as @a[scores={etherealBonbon=1..}] run scoreboard players remove @s etherealBonbon 1