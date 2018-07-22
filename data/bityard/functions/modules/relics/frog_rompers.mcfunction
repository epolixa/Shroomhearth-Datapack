################################################################
# Frog Rompers
# pants that give the player a chargable jump boost
################################################################

# trigger flag if wearing rompers
execute as @a[nbt={Inventory: [{Slot:101b, tag:{relic:"frog_rompers"}}]}] run scoreboard players add @s frogRompers 1

# cap frogRompersSneak
execute as @a[scores={frogRompersSneak=80..}] run scoreboard players set @s frogRompersSneak 80

# give jump boost levels
effect give @a[scores={frogRompersSneak=20..39}] minecraft:jump_boost 1 2 true
effect give @a[scores={frogRompersSneak=40..59}] minecraft:jump_boost 1 5 true
effect give @a[scores={frogRompersSneak=60..80}] minecraft:jump_boost 1 8 true

# charge level sound effect
execute as @a[scores={playerSneak=1, frogRompersSneak=20}] at @s run playsound minecraft:entity.puffer_fish.blow_out player @a ~ ~ ~ 1 1
execute as @a[scores={playerSneak=1, frogRompersSneak=40}] at @s run playsound minecraft:entity.puffer_fish.blow_out player @a ~ ~ ~ 1 1.2
execute as @a[scores={playerSneak=1, frogRompersSneak=60}] at @s run playsound minecraft:entity.puffer_fish.blow_out player @a ~ ~ ~ 1 1.4

# jumpy particles
execute as @a[scores={frogRompersSneak=20..80, motionY=1..}] at @s run particle minecraft:happy_villager ~ ~0.5 ~ 0.2 0.2 0.2 0 1

# jump sound effect
execute as @a[scores={playerJump=1.., frogRompersSneak=20..39}] at @s run playsound minecraft:entity.puffer_fish.blow_up player @a ~ ~ ~ 1 1
execute as @a[scores={playerJump=1.., frogRompersSneak=40..59}] at @s run playsound minecraft:entity.puffer_fish.blow_up player @a ~ ~ ~ 1 1.2
execute as @a[scores={playerJump=1.., frogRompersSneak=60..80}] at @s run playsound minecraft:entity.puffer_fish.blow_up player @a ~ ~ ~ 1 1.4

# tick down frog romper sneak when not crouched
execute as @a[scores={playerSneak=0, frogRompersSneak=1..}, nbt={OnGround:1b}] run scoreboard players remove @s frogRompersSneak 1

# reset objectives to 0 if not wearing rompers
execute as @a[scores={frogRompers=0, frogRompersSneak=1..}] run scoreboard players set @s frogRompersSneak 0
execute as @a[scores={frogRompersSneak=1}] run scoreboard players add @s frogRompers 0
execute as @a[scores={frogRompers=1..}] run scoreboard players set @s frogRompers 0