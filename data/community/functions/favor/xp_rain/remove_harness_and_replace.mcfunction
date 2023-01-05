# replace
kill @e[type=experience_orb,tag=xp_rain,distance=..1,sort=nearest,limit=1]
summon minecraft:experience_orb ~ ~0.4 ~ {Tags:["xp_rain"],Value:1}

# remove
tag @s remove xp_rain_falling
tp @s ~ -65 ~
kill @s

