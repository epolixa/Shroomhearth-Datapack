# reset trigger
advancement revoke @s only random_tp:eat

# teleport and tag the player
execute positioned 112 75 0 as @s[distance=..2] run function random_tp:teleport

# summon an area_effect_cloud that lasts for ten seconds
# applies one second of nausea, which gets detected by advancement to trigger follow teleport
summon area_effect_cloud 112 75 0 {Tags: ["random_tp_link"], Duration: 1200, DurationOnUse: 0, Effects: [{Ambient: true, Amplifier: 2, Duration: 20, Id: 9, ShowIcon: false, ShowParticles: false}], Particle: "minecraft:reverse_portal", Radius: 2, RadiusOnUse: 0, RadiusPerTick: 0} 