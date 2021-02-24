# create pillars of crying obsidian at marker position
fill ~ ~ ~ ~ ~3 ~ minecraft:crying_obsidian replace minecraft:air

# play particles on pillars
particle minecraft:dragon_breath ~ ~2 ~ 0.5 2 0.5 0.05 20 force

# play sound on pillars
playsound minecraft:block.stone.place hostile @a ~ ~ ~ 1 0.01