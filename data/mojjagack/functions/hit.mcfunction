# get entity closest to average attack range of attacker
execute positioned ^ ^ ^1 run tag @e[type=#bityard:living,sort=nearest,limit=1] add mojjagack_victim

# play a sound on attacker
playsound minecraft:entity.vex.idle player @a ~ ~ ~ 0.3 1.7

# play particles on victim
execute at @e[tag=mojjagack_victim,sort=nearest,limit=1] run particle minecraft:status_effect ~ ~0.5 ~ 0.5 0.3 0.5 0 5

# apply random effect on victim
execute as @s[scores={rng=0}] run effect @e[tag=mojjagack_victim,sort=nearest,limit=1] give minecraft:slowness 10
execute as @s[scores={rng=1}] run effect @e[tag=mojjagack_victim,sort=nearest,limit=1] give minecraft:mining_fatigue 10
execute as @s[scores={rng=2}] run effect @e[tag=mojjagack_victim,sort=nearest,limit=1] give minecraft:nausea 10
execute as @s[scores={rng=3}] run effect @e[tag=mojjagack_victim,sort=nearest,limit=1] give minecraft:blindness 10
execute as @s[scores={rng=4}] run effect @e[tag=mojjagack_victim,sort=nearest,limit=1] give minecraft:hunger 10
execute as @s[scores={rng=5}] run effect @e[tag=mojjagack_victim,sort=nearest,limit=1] give minecraft:weakness 10
execute as @s[scores={rng=6}] run effect @e[tag=mojjagack_victim,sort=nearest,limit=1] give minecraft:poison 10
execute as @s[scores={rng=7}] run effect @e[tag=mojjagack_victim,sort=nearest,limit=1] give minecraft:wither 10
execute as @s[scores={rng=8}] run effect @e[tag=mojjagack_victim,sort=nearest,limit=1] give minecraft:levitation 10
execute as @s[scores={rng=9}] run effect @e[tag=mojjagack_victim,sort=nearest,limit=1] give minecraft:instant_damage

# untag victim
tag @e[tag=mojjagack_victim,sort=nearest,limit=1] remove mojjagack_victim

# revoke trigger
advancement revoke @s only paladins_halberd:hit