################################################################
# Ephemeral Bonbon
# script for ephemral bonbon usage
################################################################

# Apply Night Vision 
execute as @a[scores={ephemeralBonbon=1}] run effect give @s minecraft:night_vision 6

# Set countdown timer for anyone who eata da frute
execute as @a[scores={ephemeralBonbon=1}] run scoreboard players set @s ephemeralBonbon 123

# Countdown the spectator duration
execute as @a[scores={ephemeralBonbon=3..123}] run scoreboard players remove @s ephemeralBonbon 1

# Put player in spectator mode
execute as @a[scores={ephemeralBonbon=3..123},gamemode=!spectator] run gamemode spectator @s 

# Spawn particles around spectator
execute as @a[scores={ephemeralBonbon=3..123}] at @s run particle minecraft:dragon_breath ~ ~1.6 ~ 0.2 0.2 0.2 0.005 1

# Put player back in survival mode
execute as @a[scores={ephemeralBonbon=2},gamemode=spectator] run gamemode survival @s

# Reset chorus fruit flag
execute as @a[scores={ephemeralBonbon=2}] run scoreboard players set @s ephemeralBonbon 0