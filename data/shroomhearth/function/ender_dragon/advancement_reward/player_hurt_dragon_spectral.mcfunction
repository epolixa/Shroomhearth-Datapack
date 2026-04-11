# Executor: A Player who hurt the ender dragon with a spectral arrow
# Position: The Player

tellraw @a[tag=debug_ender_dragon] [{"text":"[shroomhearth:ender_dragon/advancement_reward/player_hurt_dragon_spectral] "},{"selector":"@s"},{"text":" hurt the Ender Dragon with a spectral arrow"}]


# revoke trigger for damage bonus
advancement revoke @s only shroomhearth:ender_dragon/player_hurt_dragon_spectral

# play special sound
playsound minecraft:item.trident.return hostile @s ~ ~ ~ 12 1.8

# refund a bit of rage
execute as @n[tag=omen_ender_dragon] if score @s rage matches 1.. run scoreboard players remove @s rage 1