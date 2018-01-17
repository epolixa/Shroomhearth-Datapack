################################################################
# Lovers' Stone
# script for lovers' stone
################################################################


# Increment score for players
execute as @a[scores={loversStone=1..}] run scoreboard players add @s loversStone 1

# Trigger lovers stone flag for any player holding it
execute as @a[nbt={SelectedItem:{id:"minecraft:redstone_torch"}},scores={loversStone=0}] run scoreboard players set @s loversStone 1

# Or make sure it triggers from offhand too
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:redstone_torch"}]},scores={loversStone=0}] run scoreboard players set @s loversStone 1

# Summon armor stand marker at player's viewpoint
execute as @a[scores={loversStone=1}] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1 run summon minecraft:armor_stand ~ ~ ~ {Tags: ["loversStone"], Marker: true, NoGravity: true, NoAI: true, Invisible: true, Invulnerable: true, Silent: true, Small: true}

# Increment score for armor stand
execute as @e[tag=loversStone,type=armor_stand] run scoreboard players add @s loversStone 1

# Make particles at armor stand
execute as @e[tag=loversStone,type=armor_stand,scores={loversStone=2}] at @s run particle minecraft:end_rod ~ ~ ~

# Particles frame 2
execute as @e[tag=loversStone,type=armor_stand,scores={loversStone=6}] at @s facing entity @e[type=mooshroom,limit=1,sort=nearest] eyes positioned ^ ^ ^0.5 run particle minecraft:end_rod ~ ~ ~

# Particles frame 3
execute as @e[tag=loversStone,type=armor_stand,scores={loversStone=10}] at @s facing entity @e[type=mooshroom,limit=1,sort=nearest] eyes positioned ^ ^ ^1 run particle minecraft:end_rod ~ ~ ~

# Particles frame 4
execute as @e[tag=loversStone,type=armor_stand,scores={loversStone=14}] at @s facing entity @e[type=mooshroom,limit=1,sort=nearest] eyes positioned ^ ^ ^1.5 run particle minecraft:end_rod ~ ~ ~

# Particles frame 5
execute as @e[tag=loversStone,type=armor_stand,scores={loversStone=18}] at @s facing entity @e[type=mooshroom,limit=1,sort=nearest] eyes positioned ^ ^ ^2 run particle minecraft:end_rod ~ ~ ~

# Kill armor stand at the end of their life
kill @e[tag=loversStone,type=armor_stand,scores={loversStone=18..}]

# Reset score for players
execute as @a[scores={loversStone=54..}] run scoreboard players set @s loversStone 0