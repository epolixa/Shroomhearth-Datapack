# Executor: Player who attacked a harmony cap interaction entity
# Position: The player

tellraw @a[tag=debug_harmony] "[shroomhearth:harmony/harmony_cap/advancement_reward/player_hurt_harmony_cap] player hurt harmony cap interaction entity"


# Revoke trigger
advancement revoke @s only shroomhearth:harmony/player_hurt_harmony_cap

# Drop item and remove the harmony cap interaction entity
execute as @n[tag=harmony_cap_interaction,nbt={attack:{}}] at @s run function shroomhearth:harmony/harmony_cap/drop_item