# capture dragon phase
execute store result score @s dragonPhase run data get entity @s DragonPhase

# capture dragon health
execute store result score @s bossHealth run data get entity @s Health

# revoke trigger for damage bonus
execute positioned 0 64 0 run advancement revoke @a[distance=..200] only boss_fight:damage_dragon

# increment powerCooldown for dragon if phase is not landed and not at full health
scoreboard players add @s[scores={dragonPhase=0..2,bossHealth=..200}] powerCooldown 1

# execute powers on cooldowns depending on health
execute as @s[scores={bossHealth=1..50,powerCooldown=5..}] run function boss_fight:dragon_power
execute as @s[scores={bossHealth=51..100,powerCooldown=10..}] run function boss_fight:dragon_power
execute as @s[scores={bossHealth=101..150,powerCooldown=15..}] run function boss_fight:dragon_power
execute as @s[scores={bossHealth=151..199,powerCooldown=20..}] run function boss_fight:dragon_power
