################################################################
# beckon dissonance
# show warning for wrong dimension
################################################################

# remove score
scoreboard players reset @s porcelainItem

# whisper
playsound minecraft:particle.soul_escape ambient @s ~ ~ ~ 1 1 1

# inform
title @s actionbar {"color":"white","obfuscated":true,"text":"DISSONANCE"}