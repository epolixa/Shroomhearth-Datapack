# summon a random area effect cloud
execute store result score random shroomhearth run random value 0..19

# speed 2 10s
execute if score random shroomhearth matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dragon_distortion"],potion_contents:{custom_effects:[{id:"minecraft:speed",duration:200,amplifier:2}]},Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# slowness 2 10s
execute if score random shroomhearth matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dragon_distortion"],potion_contents:{custom_effects:[{id:"minecraft:slowness",duration:200,amplifier:2}]},Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# haste 2 10s
execute if score random shroomhearth matches 2 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dragon_distortion"],potion_contents:{custom_effects:[{id:"minecraft:haste",duration:200,amplifier:2}]},Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# mining fatigue 10s
execute if score random shroomhearth matches 3 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dragon_distortion"],potion_contents:{custom_effects:[{id:"minecraft:mining_fatigue",duration:200}]},Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# strength 2 10s
execute if score random shroomhearth matches 4 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dragon_distortion"],potion_contents:{custom_effects:[{id:"minecraft:strength",duration:200,amplifier:2}]},Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# jump boost 2 10s
execute if score random shroomhearth matches 5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dragon_distortion"],potion_contents:{custom_effects:[{id:"minecraft:jump_boost",duration:200,amplifier:2}]},Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# nausea 10s
execute if score random shroomhearth matches 6 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dragon_distortion"],potion_contents:{custom_effects:[{id:"minecraft:nausea",duration:200}]},Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# regeneration 2 10s
execute if score random shroomhearth matches 7 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dragon_distortion"],potion_contents:{custom_effects:[{id:"minecraft:regeneration",duration:200,amplifier:2}]},Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# resistance 2 10s
execute if score random shroomhearth matches 8 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dragon_distortion"],potion_contents:{custom_effects:[{id:"minecraft:resistance",duration:200,amplifier:2}]},Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# fire resistance 10s
execute if score random shroomhearth matches 9 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dragon_distortion"],potion_contents:{custom_effects:[{id:"minecraft:fire_resistance",duration:200}]},Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# invisibility 10s
execute if score random shroomhearth matches 10 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dragon_distortion"],potion_contents:{custom_effects:[{id:"minecraft:invisibility",duration:200}]},Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# blindness 10s
execute if score random shroomhearth matches 11 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dragon_distortion"],potion_contents:{custom_effects:[{id:"minecraft:blindness",duration:200}]},Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# night vision 10s
execute if score random shroomhearth matches 12 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dragon_distortion"],potion_contents:{custom_effects:[{id:"minecraft:night_vision",duration:200}]},Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# hunger 2 10s
execute if score random shroomhearth matches 13 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dragon_distortion"],potion_contents:{custom_effects:[{id:"minecraft:hunger",duration:200,amplifier:2}]},Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# weakness 2 10s
execute if score random shroomhearth matches 14 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dragon_distortion"],potion_contents:{custom_effects:[{id:"minecraft:weakness",duration:200,amplifier:2}]},Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# poison 10s
execute if score random shroomhearth matches 15 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dragon_distortion"],potion_contents:{custom_effects:[{id:"minecraft:poison",duration:200}]},Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# wither 10s
execute if score random shroomhearth matches 16 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dragon_distortion"],potion_contents:{custom_effects:[{id:"minecraft:wither",duration:200}]},Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# absorption 10s
execute if score random shroomhearth matches 17 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dragon_distortion"],potion_contents:{custom_effects:[{id:"minecraft:absorption",duration:200}]},Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# levitation 10s
execute if score random shroomhearth matches 18 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dragon_distortion"],potion_contents:{custom_effects:[{id:"minecraft:levitation",duration:200}]},Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# slow falling 10s
execute if score random shroomhearth matches 19 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dragon_distortion"],potion_contents:{custom_effects:[{id:"minecraft:slow_falling",duration:200}]},Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}

scoreboard players set random shroomhearth -1

# play particles
execute at @s run particle minecraft:trial_omen ~ ~1 ~ 0.5 0.5 0.5 1 8 force

# play sound
execute at @s run playsound minecraft:block.trial_spawner.spawn_mob hostile @a ~ ~ ~ 8 0.9
