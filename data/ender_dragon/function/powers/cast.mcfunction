# play effects
particle minecraft:trial_omen ~ ~1 ~ 3 1 3 0 32 force
execute as @a[predicate=ender_dragon:on_main_end_island] run playsound minecraft:ambient.cave hostile @s ~ ~8 ~ 16 2

# run a random power...
execute store result score random shroomhearth run random value 0..4

# summon mobs - more common until low health, much more common at high health
#execute as @s[scores={bossHealthPercent=..30}] if score random shroomhearth matches 0 run function ender_dragon:powers/summon/start_sequence
#execute as @s[scores={bossHealthPercent=31..90}] if score random shroomhearth matches 0..1 run function ender_dragon:powers/summon/start_sequence
#execute as @s[scores={bossHealthPercent=91..}] if score random shroomhearth matches 0..2 run function ender_dragon:powers/summon/start_sequence
execute if score random shroomhearth matches 0 run function ender_dragon:powers/summon/start_sequence

# apply effects - more common at medium health
#execute as @s[scores={bossHealthPercent=..30}] if score random shroomhearth matches 1 run function ender_dragon:powers/distort/start_sequence
#execute as @s[scores={bossHealthPercent=31..90}] if score random shroomhearth matches 2..3 run function ender_dragon:powers/distort/start_sequence
#execute as @s[scores={bossHealthPercent=91..}] if score random shroomhearth matches 3 run function ender_dragon:powers/distort/start_sequence
execute if score random shroomhearth matches 1 run function ender_dragon:powers/distort/start_sequence

# restore crystal - much more common at low health
#execute as @s[scores={bossHealthPercent=..30}] if score random shroomhearth matches 2..4 run function ender_dragon:powers/restore/restore
#execute as @s[scores={bossHealthPercent=31..}] if score random shroomhearth matches 4 run function ender_dragon:powers/restore/restore
execute if score random shroomhearth matches 2 run function ender_dragon:powers/restore/restore

# summon lighting - always uncommon
execute if score random shroomhearth matches 3 run function ender_dragon:powers/strike/start_sequence

# create pillars - always uncommon
#execute if score lcg shroomhearth matches 6 run function ender_dragon:powers/pillar/start_sequence
execute if score random shroomhearth matches 4 run function ender_dragon:powers/gravity/start_sequence

# transmute blocks - always uncommon
# disabling this for now, may revisit when end has some kind of hazard block
#execute if score lcg shroomhearth matches 8 run function ender_dragon:powers/transmute

# unset random
scoreboard players set random shroomhearth -1