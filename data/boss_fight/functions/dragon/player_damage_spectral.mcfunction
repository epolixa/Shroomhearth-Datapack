# revoke trigger for damage bonus
advancement revoke @s only boss_fight:dragon/player_damage_spectral

# play special sound
playsound minecraft:item.trident.return hostile @s ~ ~ ~ 12 1.8

# refund a bit of rage
execute as @e[type=minecraft:ender_dragon,limit=1,sort=nearest] if score @s rage matches 2.. run scoreboard players remove @s rage 2