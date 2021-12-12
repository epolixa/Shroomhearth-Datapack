# revoke trigger for damage bonus
advancement revoke @s only boss_fight:dragon/player_damage_spectral

# refund a bit of rage
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest] run scoreboard players remove @s rage 2