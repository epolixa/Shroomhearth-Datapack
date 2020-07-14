################################################################
# enter porcelain
# manage entry passage to the porcelain
################################################################

# keep chunk loaded in overworld
forceload add ~ ~

# summon armor stand in overworld
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"text":"Overworld Anchor"}', Tags: ["overworld_anchor"], Marker: true, Invisible: true, ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick", Count:1b, tag: {CustomModelData: 1, Enchantments:[{id:"minecraft:infinity",lvl:1}]}}]}

# copy rotation of player to nearest anchor in overworld
data modify entity @e[type=minecraft:armor_stand,tag=overworld_anchor,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[type=minecraft:armor_stand,tag=overworld_anchor,sort=nearest,limit=1] Rotation[2] set from entity @s Rotation[2]

# burst particles in overworld
particle minecraft:end_rod ~ ~1.2 ~ 0.2 0.4 0.2 0.1 16

# teleport to porcelain
execute in bityard:porcelain run teleport @s ~ 64 ~
execute at @s run spreadplayers ~ ~ 0 1 false @s

# set gamemode to creative
gamemode creative @s

# revoke exit trigger, let them leave
advancement revoke @s only porcelain:exit_porcelain

# summon armor stand in porcelain
execute at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"text":"Porcelain Anchor"}', Tags: ["porcelain_anchor"], Marker: true, Invisible: true}

# travel effects
function porcelain:travel_effects

# burst particles in porcelain
execute at @s run particle minecraft:end_rod ~ ~1.2 ~ 0.2 0.4 0.2 0.1 16
