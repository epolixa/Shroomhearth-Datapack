# Executor: A Player who has insomnia and may spawn Phantoms
# Position: the Player

tellraw @a[tag=debug_status_visibility] [{"text":"[shroomhearth:status_visibility/advancement_reward/insomnia] "},{"selector":"@s"},{"text":" has insomnia and may spawn Phantoms"}]


# Spawn "insomnia" particles unless Spores of Insomnia are active
execute if score spores_of_insomnia shroomhearth.harmony matches 0 if predicate shroomhearth:status_visibility/insomnia_particle_chance anchored eyes run particle minecraft:mycelium ^ ^ ^0.3125 0.25 0.0625 0.25 0 2

# Revoke trigger
advancement revoke @s only shroomhearth:status_visibility/insomnia