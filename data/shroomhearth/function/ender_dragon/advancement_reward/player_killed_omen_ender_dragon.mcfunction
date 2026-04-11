# Executor: A player that has killed an Omen Ender Dragon
# Position: The player

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/advancement_reward/player_killed_omen_ender_dragon] "},{"selector":"@s"},{"text":" killed an Omen Ender Dragon"}]


# revoke advancement
advancement revoke @s only shroomhearth:ender_dragon/player_killed_omen_ender_dragon

# grant advancement for slaying omen ender dragon
advancement grant @a[predicate=shroomhearth:ender_dragon/on_main_end_island] only shroomhearth:ender_dragon/ominous_power

# remove bossbar
bossbar remove shroomhearth:ender_dragon_rage

# tag any leftover mobs
tag @e[type=minecraft:vex,predicate=shroomhearth:ender_dragon/on_main_end_island] add dragon_thrall
tag @e[type=#shroomhearth:ender_dragon/slimes,predicate=shroomhearth:ender_dragon/on_main_end_island] add dragon_thrall

# fix for slimes so they don't make smaller ones when they die
execute as @e[type=#shroomhearth:ender_dragon/slimes,tag=dragon_thrall] run data merge entity @s {Size:0}

# kill end crystal marker armor stands
kill @e[type=minecraft:armor_stand,tag=crystal_marker]

# kill all power targets (if any remain)
kill @e[tag=power_target]

# kill all dragon summons
kill @e[tag=dragon_thrall]
kill @e[tag=dragon_distortion]
kill @e[tag=dragon_gravity]

# kickoff checks for dissolve
function shroomhearth:ender_dragon/check_dissolved