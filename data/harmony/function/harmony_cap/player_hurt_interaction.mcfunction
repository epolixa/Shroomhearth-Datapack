tellraw @a[tag=debug_harmony] "[harmony:harmony_cap/player_hurt_interaction] player hurt harmony cap interaction entity"

advancement revoke @s only harmony:player_hurt_harmony_cap

execute as @n[tag=harmony_cap_interaction,nbt={attack:{}}] at @s run function harmony:harmony_cap/drop_item