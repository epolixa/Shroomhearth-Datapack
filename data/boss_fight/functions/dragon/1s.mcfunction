# run summon/setup functions if not already
execute as @s[tag=!summoned] run function boss_fight:dragon/dragon_summoned

# capture dragon phase
execute store result score @s dragonPhase run data get entity @s DragonPhase

# capture dragon health
execute store result score @s bossHealth run data get entity @s Health

# revoke trigger for damage bonus
execute positioned 0 64 0 run advancement revoke @a[distance=..200] only boss_fight:dragon/player_damage

# increment powerCooldown for dragon if phase is not landed and not at full health or low health
scoreboard players add @s[scores={bossHealth=81..199,dragonPhase=0..2}] powerCooldown 1

# always increment powerCooldown if health is getting low
scoreboard players add @s[scores={bossHealth=2..80}] powerCooldown 1

# update bossbar
execute positioned 0 64 0 run bossbar set boss_fight:dragon_power players @a[distance=..200]
execute as @s[scores={bossHealth=2..60,powerCooldown=5..}] run bossbar set boss_fight:dragon_power max 5
execute as @s[scores={bossHealth=61..100,powerCooldown=10..}] run bossbar set boss_fight:dragon_power max 10
execute as @s[scores={bossHealth=101..140,powerCooldown=15..}] run bossbar set boss_fight:dragon_power max 15
execute as @s[scores={bossHealth=141..180,powerCooldown=20..}] run bossbar set boss_fight:dragon_power max 20
execute as @s[scores={bossHealth=181..199,powerCooldown=25..}] run bossbar set boss_fight:dragon_power max 25
execute store result bossbar boss_fight:dragon_power value run scoreboard players get @s powerCooldown

# execute powers on cooldowns depending on health
execute as @s[scores={bossHealth=2..60,powerCooldown=5..}] run function boss_fight:dragon/powers/cast
execute as @s[scores={bossHealth=61..100,powerCooldown=10..}] run function boss_fight:dragon/powers/cast
execute as @s[scores={bossHealth=101..140,powerCooldown=15..}] run function boss_fight:dragon/powers/cast
execute as @s[scores={bossHealth=141..180,powerCooldown=20..}] run function boss_fight:dragon/powers/cast
execute as @s[scores={bossHealth=181..199,powerCooldown=25..}] run function boss_fight:dragon/powers/cast
