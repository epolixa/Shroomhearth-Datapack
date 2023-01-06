# run summon/setup functions if not already
execute as @s[tag=!summoned] run function boss_fight:dragon/dragon_summoned

# capture dragon phase
execute store result score @s dragonPhase run data get entity @s DragonPhase

# capture number of players
execute store result score dragonPlayers shroomhearth if entity @a[distance=..128]

# adapt max health to 200+((N-1)*50)
scoreboard players set @s bossMaxHealth 50
scoreboard players operation @s bossMaxHealth *= dragonPlayers shroomhearth
scoreboard players add @s bossMaxHealth 150
data modify storage boss_fight dragon.max_health.Name set value "minecraft:generic.max_health"
execute store result storage boss_fight dragon.max_health.Base double 1 run scoreboard players get @s bossMaxHealth
data modify entity @s Attributes[{"Name":"minecraft:generic.max_health"}] set from storage boss_fight dragon.max_health

# capture dragon health
execute store result score @s bossHealth run data get entity @s Health
scoreboard players set @s bossHealthPercent 100
scoreboard players operation @s bossHealthPercent *= @s bossHealth
scoreboard players operation @s bossHealthPercent /= @s bossMaxHealth 

# play particles on pillar gravity
execute as @e[tag=pillar_gravity] at @s run particle dragon_breath ~ ~2 ~ 0 1 0 0.05 4

# increment rage by 1 if below half health
scoreboard players add @s[scores={bossHealthPercent=1..50}] rage 1

# increment rage by 1 extra if critically low
scoreboard players add @s[scores={bossHealth=1..20}] rage 1

# update bossbar
bossbar set boss_fight:dragon_rage max 64
execute store result bossbar boss_fight:dragon_rage value run scoreboard players get @s rage

# execute powers at max rage
execute as @s[scores={rage=64..,bossHealthPercent=1..99}] run function boss_fight:dragon/powers/cast