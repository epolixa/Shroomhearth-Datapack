# Executor: A player who hooked something with the Petrichor Pond Pole
# Position: the Player

tellraw @a[tag=debug_stories] [{"text":"[shroomhearth:stories/advancement_reward/petrichor_pond_pole_hooked] "},{"selector":"@s"},{"text":" hooked something with the Petrichor Pond Pole"}]

# Revoke trigger
advancement revoke @s only shroomhearth:stories/relics/petrichor_pond_pole_hooked

# Execute the effects of the Petrichor Pond Pole at the position of the fishing bobber
execute at @n[type=minecraft:fishing_bobber] run function shroomhearth:stories/relics/petrichor_pond_pole_effects