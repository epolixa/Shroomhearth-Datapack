# revoke trigger
advancement revoke @s only relics:player_hurt_entity_with_guardians_glaive

# play effects
execute as @e[nbt={HurtTime:10s},sort=nearest,limit=1] at @s run particle minecraft:witch ~ ~1 ~ 0 0 0 1 4
playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 1.2