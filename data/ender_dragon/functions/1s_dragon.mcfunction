# run summon/setup functions if not already
execute as @s[tag=!summoned] run function ender_dragon:setup_dragon

# capture dragon phase
execute store result score @s dragonPhase run data get entity @s DragonPhase

# capture number of players
#execute store result score dragonPlayers shroomhearth if entity @a[predicate=ender_dragon:on_main_end_island]
scoreboard players set dragonPlayers shroomhearth 5

# adapt max health to 200+((N-1)*50)
function ender_dragon:adapt_max_health

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
bossbar set ender_dragon:dragon_rage max 64
execute store result bossbar ender_dragon:dragon_rage value run scoreboard players get @s rage

# execute powers at max rage
execute as @s[scores={rage=64..,bossHealthPercent=1..99}] run function ender_dragon:powers/cast

# increment dragStatSlayTime
scoreboard players add dragStatSlayTime shroomhearth 1