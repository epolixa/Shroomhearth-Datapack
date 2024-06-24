# revoke trigger for damage bonus
advancement revoke @s only ender_dragon:player_hurt_dragon_spectral

# play special sound
playsound minecraft:item.trident.return hostile @s ~ ~ ~ 12 1.8

# refund a bit of rage
execute as @n[tag=omen_ender_dragon] if score @s rage matches 1.. run scoreboard players remove @s rage 1