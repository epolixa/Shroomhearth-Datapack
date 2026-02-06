# Executor: Player who has insomnia and may spawn phantoms
# Position: the Player

tellraw @a[tag=debug_status_visibility] [{"text":"[shroomhearth:status_visibility/advancement_reward/insomnia_warning] "},{"selector":"@s"},{"text":" has insomnia and may spawn Phantoms"}]


# Play eerie sound
playsound minecraft:entity.phantom.ambient hostile @s ~ ~ ~ 0.5 0.5