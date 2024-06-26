# Executes from the context of an Omen Ender Dragon that was recently summoned and not yet initialized

# Set the name of the Omen Ender Dragon
execute in minecraft:the_end positioned 0 60 0 run function ender_dragon:set_omen_ender_dragon_name

# Adapt max health according to omen_level and set current Health to its new max
function ender_dragon:adapt_max_health
data modify entity @s Health set from entity @s attributes[{id:"minecraft:generic.max_health"}].base

# Override loot table
data modify entity @s DeathLootTable set value "ender_dragon:omen_ender_dragon"

# Set carve drop potential according to omen level
# Drop potential = omen_level - 1 (since one rune always drops from slain dragon)
scoreboard players operation @s carve_drop_potential = @s omen_level
scoreboard players remove @s carve_drop_potential 1

# Create Omen Ender Dragon's rage bossbar
bossbar add ender_dragon:dragon_rage {"font":"minecraft:illageralt","bold":true,"text":"OMEN"}
bossbar set ender_dragon:dragon_rage color red
bossbar set ender_dragon:dragon_rage max 25
bossbar set ender_dragon:dragon_rage style progress
bossbar set ender_dragon:dragon_rage value 0
bossbar set ender_dragon:dragon_rage visible true

# Summon End Crystal markers
# 90y is average height of obsidian spikes
summon minecraft:armor_stand -34 90 -25 {Tags:["crystal_marker"],Invulnerable:1b,Marker:1b,Invisible:1b}
summon minecraft:armor_stand -13 90 -40 {Tags:["crystal_marker"],Invulnerable:1b,Marker:1b,Invisible:1b}
summon minecraft:armor_stand 12 90 -40 {Tags:["crystal_marker"],Invulnerable:1b,Marker:1b,Invisible:1b}
summon minecraft:armor_stand 33 90 -25 {Tags:["crystal_marker"],Invulnerable:1b,Marker:1b,Invisible:1b}
summon minecraft:armor_stand 42 90 0 {Tags:["crystal_marker"],Invulnerable:1b,Marker:1b,Invisible:1b}
summon minecraft:armor_stand 33 90 24 {Tags:["crystal_marker"],Invulnerable:1b,Marker:1b,Invisible:1b}
summon minecraft:armor_stand 12 90 39 {Tags:["crystal_marker"],Invulnerable:1b,Marker:1b,Invisible:1b}
summon minecraft:armor_stand -13 90 39 {Tags:["crystal_marker"],Invulnerable:1b,Marker:1b,Invisible:1b}
summon minecraft:armor_stand -34 90 24 {Tags:["crystal_marker"],Invulnerable:1b,Marker:1b,Invisible:1b}
summon minecraft:armor_stand -42 90 -1 {Tags:["crystal_marker"],Invulnerable:1b,Marker:1b,Invisible:1b}

# Fix markers to End Crystal positions if any still exist
execute as @e[type=minecraft:armor_stand,tag=crystal_marker] at @s run tp @s @e[type=minecraft:end_crystal,limit=1,sort=nearest]

# Play sounds to indicate an omen ender dragon was summoned
playsound minecraft:entity.ender_dragon.growl hostile @a[predicate=ender_dragon:on_main_end_island] ~ ~ ~ 200 0.5
playsound minecraft:ambient.cave hostile @a[predicate=ender_dragon:on_main_end_island] ~ ~ ~ 200 0.5

# Remove bad omen from contributing players
effect clear @a[predicate=ender_dragon:on_main_end_island] minecraft:bad_omen