# Put player back in survival mode
execute as @s[gamemode=spectator] run gamemode survival @s

# Play sound
playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 1.1