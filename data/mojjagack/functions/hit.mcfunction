# get entity closest to average attack range of attacker
tag @e[type=#bityard:living,sort=nearest,limit=1,distance=0.1..,nbt={HurtTime:10s}] add mojjagack_victim

# play a sound on attacker
playsound minecraft:entity.vex.charge player @a ~ ~ ~ 0.7 1.3

# play particles on victim
execute at @e[tag=mojjagack_victim,sort=nearest,limit=1] run particle minecraft:witch ~ ~0.5 ~ 0.5 0.3 0.5 0 5

# apply random effect on victim
execute as @s[scores={rng=0}] run effect give @e[tag=mojjagack_victim,sort=nearest,limit=1] minecraft:slowness 10
execute as @s[scores={rng=1}] run effect give @e[tag=mojjagack_victim,sort=nearest,limit=1] minecraft:mining_fatigue 10
execute as @s[scores={rng=2}] run effect give @e[tag=mojjagack_victim,sort=nearest,limit=1] minecraft:nausea 10
execute as @s[scores={rng=3}] run effect give @e[tag=mojjagack_victim,sort=nearest,limit=1] minecraft:blindness 10
execute as @s[scores={rng=4}] run effect give @e[tag=mojjagack_victim,sort=nearest,limit=1] minecraft:hunger 10
execute as @s[scores={rng=5}] run effect give @e[tag=mojjagack_victim,sort=nearest,limit=1] minecraft:weakness 10
execute as @s[scores={rng=6}] run effect give @e[tag=mojjagack_victim,sort=nearest,limit=1] minecraft:poison 10
execute as @s[scores={rng=7}] run effect give @e[tag=mojjagack_victim,sort=nearest,limit=1] minecraft:wither 10
execute as @s[scores={rng=8}] run effect give @e[tag=mojjagack_victim,sort=nearest,limit=1] minecraft:levitation 10
execute as @s[scores={rng=9}] run effect give @e[tag=mojjagack_victim,sort=nearest,limit=1] minecraft:instant_damage

# untag victim
tag @e[tag=mojjagack_victim,sort=nearest,limit=1] remove mojjagack_victim

# revoke trigger
advancement revoke @s only mojjagack:hit