summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:6,Radius:20,RadiusOnUse:0,RadiusPerTick:0,Particle:"minecraft:block air",Potion:"minecraft:water",Effects:[{Id:10,Amplifier:2,Duration:20}]}
playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 0.3 1.7
advancement revoke @s only paladins_halberd:hit