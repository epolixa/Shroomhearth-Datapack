# set lcg
scoreboard players set lcgModulus shroomhearth 9
function shroomhearth:lcg/random

# summon a random area effect cloud
# slowness 2 10s
execute if score lcg shroomhearth matches 0 run summon area_effect_cloud ~ ~ ~ {Effects:[{Id:2,Duration:200,Amplifier:1}],Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# mining fatigue 10s
execute if score lcg shroomhearth matches 1 run summon area_effect_cloud ~ ~ ~ {Effects:[{Id:4,Duration:200}],Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# nausea 10s
execute if score lcg shroomhearth matches 2 run summon area_effect_cloud ~ ~ ~ {Effects:[{Id:9,Duration:200}],Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# blindness 10s
execute if score lcg shroomhearth matches 3 run summon area_effect_cloud ~ ~ ~ {Effects:[{Id:15,Duration:200}],Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# hunger 2 10s
execute if score lcg shroomhearth matches 4 run summon area_effect_cloud ~ ~ ~ {Effects:[{Id:17,Duration:200,Amplifier:1}],Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# weakness 2 10s
execute if score lcg shroomhearth matches 5 run summon area_effect_cloud ~ ~ ~ {Effects:[{Id:18,Duration:200,Amplifier:1}],Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# poison 10s
execute if score lcg shroomhearth matches 6 run summon area_effect_cloud ~ ~ ~ {Effects:[{Id:19,Duration:200}],Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# wither 10s
execute if score lcg shroomhearth matches 7 run summon area_effect_cloud ~ ~ ~ {Effects:[{Id:20,Duration:200}],Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}
# levitation 10s
execute if score lcg shroomhearth matches 8 run summon area_effect_cloud ~ ~ ~ {Effects:[{Id:25,Duration:200}],Duration:600,DurationOnUse:0,Radius:3.0f,RadiusOnUse:0,RadiusPerTick:0.006666667f,ReapplicationDelay:20,WaitTime:10}

# unset lcg
scoreboard players set lcg shroomhearth -1

# play particles
particle minecraft:dragon_breath ~ ~0.5 ~ 2 0.5 2 0.05 20 force

# play sound
playsound minecraft:entity.puffer_fish.blow_up hostile @a ~ ~ ~ 4 0.5
