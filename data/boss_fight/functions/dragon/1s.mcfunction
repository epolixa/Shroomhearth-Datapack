# run summon/setup functions if not already
execute as @s[tag=!summoned] run function boss_fight:dragon/dragon_summoned

# capture dragon phase
execute store result score @s dragonPhase run data get entity @s DragonPhase

# capture dragon health
execute store result score @s bossHealth run data get entity @s Health

# summon short duration negative levitation aec behind dragon during flight phase
#execute if score @s dragonPhase matches 0..1 run function boss_fight:dragon/make_wake

# play particles on pillar gravity
execute as @e[tag=pillar_gravity] at @s run particle dragon_breath ~ ~2 ~ 0 1 0 0.05 4

# revoke trigger for damage bonus
execute positioned 0 64 0 run advancement revoke @a[distance=..190] only boss_fight:dragon/player_damage

# increment rage for dragon if phase is not landed and not at full health or low health
scoreboard players add @s[scores={bossHealth=81..199,dragonPhase=0..2}] rage 1

# always increment rage if health is getting low
scoreboard players add @s[scores={bossHealth=2..80}] rage 1

# update bossbar
execute positioned 0 64 0 run bossbar set boss_fight:dragon_power players @a[distance=..190]
execute as @s[scores={bossHealth=2..60,rage=5..}] run bossbar set boss_fight:dragon_power max 5
execute as @s[scores={bossHealth=61..100,rage=10..}] run bossbar set boss_fight:dragon_power max 10
execute as @s[scores={bossHealth=101..140,rage=15..}] run bossbar set boss_fight:dragon_power max 15
execute as @s[scores={bossHealth=141..180,rage=20..}] run bossbar set boss_fight:dragon_power max 20
execute as @s[scores={bossHealth=181..199,rage=25..}] run bossbar set boss_fight:dragon_power max 25
execute store result bossbar boss_fight:dragon_power value run scoreboard players get @s rage

# execute powers on cooldowns depending on health
execute as @s[scores={bossHealth=2..60,rage=5..}] run function boss_fight:dragon/powers/cast
execute as @s[scores={bossHealth=61..100,rage=10..}] run function boss_fight:dragon/powers/cast
execute as @s[scores={bossHealth=101..140,rage=15..}] run function boss_fight:dragon/powers/cast
execute as @s[scores={bossHealth=141..180,rage=20..}] run function boss_fight:dragon/powers/cast
execute as @s[scores={bossHealth=181..199,rage=25..}] run function boss_fight:dragon/powers/cast
