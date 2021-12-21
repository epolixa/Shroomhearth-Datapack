# run summon/setup functions if not already
execute as @s[tag=!summoned] run function boss_fight:dragon/dragon_summoned

# capture dragon phase
execute store result score @s dragonPhase run data get entity @s DragonPhase

# capture dragon health
execute store result score @s bossHealth run data get entity @s Health

# play particles on pillar gravity
execute as @e[tag=pillar_gravity] at @s run particle dragon_breath ~ ~2 ~ 0 1 0 0.05 4

# increment rage by 1 if below half health
scoreboard players add @s[scores={bossHealth=2..100}] rage 1

# increment rage by 1 extra if critically low
scoreboard players add @s[scores={bossHealth=2..30}] rage 1

# update bossbar
bossbar set boss_fight:dragon_rage max 64
execute store result bossbar boss_fight:dragon_rage value run scoreboard players get @s rage

# execute powers at max rage
execute as @s[scores={rage=64..}] run function boss_fight:dragon/powers/cast