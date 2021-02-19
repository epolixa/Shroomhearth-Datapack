# capture dragon phase
execute store result score @s dragonPhase run data get entity @s DragonPhase

# capture dragon health
execute store result score @s bossHealth run data get entity @s Health

# revoke trigger for damage bonus
execute positioned 0 64 0 run advancement revoke @a[distance=..200] only boss_fight:damage_dragon

# increment powerCooldown for dragon if phase is not landed and not at full health or low health
scoreboard players add @s[scores={bossHealth=81..199,dragonPhase=0..2}] powerCooldown 1

# always increment powerCooldown if health is getting low
scoreboard players add @s[scores={bossHealth=1..80}] powerCooldown 1

# execute powers on cooldowns depending on health
execute as @s[scores={bossHealth=1..40,powerCooldown=5..}] run function boss_fight:dragon_power
execute as @s[scores={bossHealth=41..80,powerCooldown=10..}] run function boss_fight:dragon_power
execute as @s[scores={bossHealth=81..120,powerCooldown=15..}] run function boss_fight:dragon_power
execute as @s[scores={bossHealth=121..160,powerCooldown=20..}] run function boss_fight:dragon_power
execute as @s[scores={bossHealth=161..199,powerCooldown=25..}] run function boss_fight:dragon_power
