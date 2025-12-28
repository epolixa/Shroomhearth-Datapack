# Summon a new experience orb that will clone the XP value of the original orb
tag @s add double_xp_clone_source
execute summon minecraft:experience_orb run function harmony:spores/experience/summon_clone
tag @s remove double_xp_clone_source

# Play particle effect and sound to indicate double XP activation
particle minecraft:trial_spawner_detection
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1 2

tag @s add double_xp