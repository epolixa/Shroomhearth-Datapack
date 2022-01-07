# capture wither health
execute store result score @s bossHealth run data get entity @s Health

# capture invul
execute store result score @s witherInvul run data get entity @s Invul

# summon aec if in invul and no invul nearby
execute as @s[scores={witherInvul=1..100}] unless entity @e[tag=wither_fallout,distance=..5] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["wither_fallout","wither_summon"],Color:7047818,Duration:24000,Particle:"minecraft:smoke",Radius:1,RadiusPerTick:0.008f,Effects:[{Id:20,Duration:800,Amplifier:1}]}

# increment rage if health is below half
scoreboard players add @s[scores={bossHealth=1..150}] rage 1

# execute powers on cooldowns depending on health
execute as @s[scores={bossHealth=1..150,rage=16..}] run function boss_fight:wither/powers/cast
