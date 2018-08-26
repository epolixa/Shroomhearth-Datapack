################################################################
# Kin Stone
# script for kin stone
################################################################


# Increment score for players
execute as @a[scores={kinStone=1..}] run scoreboard players add @s kinStone 1

# Trigger lovers stone flag for any player holding it
execute as @a[nbt={SelectedItem:{id:"minecraft:magenta_dye", tag:{relic:"kin_stone"}}}] run scoreboard players add @s kinStone 0
execute as @a[nbt={SelectedItem:{id:"minecraft:magenta_dye", tag:{relic:"kin_stone"}}},scores={kinStone=0}] run scoreboard players set @s kinStone 1

# Or make sure it triggers from offhand too
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:magenta_dye", tag:{relic:"kin_stone"}}]}] run scoreboard players add @s kinStone 0
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:magenta_dye", tag:{relic:"kin_stone"}}]},scores={kinStone=0}] run scoreboard players set @s kinStone 1

# Summon armor stand marker at player's viewpoint if another player has kin stone
execute as @a[scores={kinStone=1}] at @s at @p[scores={kinStone=1..}] positioned ~ ~1.5 ~ positioned ^ ^ ^1 run summon minecraft:armor_stand ~ ~ ~ {Tags: ["kinStone"], Marker: true, NoGravity: true, NoAI: true, Invisible: true, Invulnerable: true, Silent: true, Small: true}

# Increment score for armor stand
execute as @e[tag=kinStone,type=armor_stand] run scoreboard players add @s kinStone 1

# Make particles at armor stand
execute as @e[tag=kinStone,type=armor_stand,scores={kinStone=2}] at @s run particle minecraft:end_rod ~ ~ ~

# Particles frame 2
execute as @e[tag=kinStone,type=armor_stand,scores={kinStone=6}] at @s facing entity @p[scores={kinStone=1..},distance=4..] eyes positioned ^ ^ ^0.5 run particle minecraft:end_rod ~ ~ ~

# Particles frame 3
execute as @e[tag=kinStone,type=armor_stand,scores={kinStone=10}] at @s facing entity @p[scores={kinStone=1..},distance=4..] eyes positioned ^ ^ ^1 run particle minecraft:end_rod ~ ~ ~

# Particles frame 4
execute as @e[tag=kinStone,type=armor_stand,scores={kinStone=14}] at @s facing entity @p[scores={kinStone=1..},distance=4..] eyes positioned ^ ^ ^1.5 run particle minecraft:end_rod ~ ~ ~

# Particles frame 5
execute as @e[tag=kinStone,type=armor_stand,scores={kinStone=18}] at @s facing entity @p[scores={kinStone=1..},distance=4..] eyes positioned ^ ^ ^2 run particle minecraft:end_rod ~ ~ ~

# Kill armor stand at the end of their life
kill @e[tag=kinStone,type=armor_stand,scores={kinStone=18..}]

# Reset score for players
execute as @a[scores={kinStone=54..}] run scoreboard players set @s kinStone 0