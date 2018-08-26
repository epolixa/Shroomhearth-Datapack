################################################################
# Color Names
# use dye to change player name color
################################################################

# detect if player is holding dye
# white
execute as @a[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] run scoreboard players add @s heldDye 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:bone_meal"}]}] run scoreboard players add @s heldDye 1 
# gold
execute as @a[nbt={SelectedItem:{id:"minecraft:orange_dye"}}] run scoreboard players add @s heldDye 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:orange_dye"}]}] run scoreboard players add @s heldDye 1
# aqua
execute as @a[nbt={SelectedItem:{id:"minecraft:magenta_dye"}}] run scoreboard players add @s heldDye 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:magenta_dye"}]}] run scoreboard players add @s heldDye 1
# blue
execute as @a[nbt={SelectedItem:{id:"minecraft:light_blue_dye"}}] run scoreboard players add @s heldDye 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:light_blue_dye"}]}] run scoreboard players add @s heldDye 1
# yellow
execute as @a[nbt={SelectedItem:{id:"minecraft:dandelion_yellow"}}] run scoreboard players add @s heldDye 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:dandelion_yellow"}]}] run scoreboard players add @s heldDye 1
# green
execute as @a[nbt={SelectedItem:{id:"minecraft:lime_dye"}}] run scoreboard players add @s heldDye 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:lime_dye"}]}] run scoreboard players add @s heldDye 1
# light_purple
execute as @a[nbt={SelectedItem:{id:"minecraft:pink_dye"}}] run scoreboard players add @s heldDye 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:pink_dye"}]}] run scoreboard players add @s heldDye 1
# dark_gray
execute as @a[nbt={SelectedItem:{id:"minecraft:gray_dye"}}] run scoreboard players add @s heldDye 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:gray_dye"}]}] run scoreboard players add @s heldDye 1
# gray
execute as @a[nbt={SelectedItem:{id:"minecraft:light_gray_dye"}}] run scoreboard players add @s heldDye 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:light_gray_dye"}]}] run scoreboard players add @s heldDye 1
# dark_aqua
execute as @a[nbt={SelectedItem:{id:"minecraft:cyan_dye"}}] run scoreboard players add @s heldDye 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:cyan_dye"}]}] run scoreboard players add @s heldDye 1
# dark_purple
execute as @a[nbt={SelectedItem:{id:"minecraft:purple_dye"}}] run scoreboard players add @s heldDye 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:purple_dye"}]}] run scoreboard players add @s heldDye 1
# dark_blue
execute as @a[nbt={SelectedItem:{id:"minecraft:lapis_lazuli"}}] run scoreboard players add @s heldDye 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:lapi_lazuli"}]}] run scoreboard players add @s heldDye 1
# dark_red
execute as @a[nbt={SelectedItem:{id:"minecraft:cocoa_beans"}}] run scoreboard players add @s heldDye 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:cocoa_beans"}]}] run scoreboard players add @s heldDye 1
# dark_green
execute as @a[nbt={SelectedItem:{id:"minecraft:cactus_green"}}] run scoreboard players add @s heldDye 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:cactus_green"}]}] run scoreboard players add @s heldDye 1
# red
execute as @a[nbt={SelectedItem:{id:"minecraft:rose_red"}}] run scoreboard players add @s heldDye 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:rose_red"}]}] run scoreboard players add @s heldDye 1
# black
execute as @a[nbt={SelectedItem:{id:"minecraft:ink_sac"}}] run scoreboard players add @s heldDye 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:ink_sac"}]}] run scoreboard players add @s heldDye 1


# detect if player is looking upwards and summon sheep dummy based on team
# white or no team
execute as @a[scores={heldDye=1..,viewPitch=..-75},team=] at @s unless entity @e[tag=color_names, distance=..3] run summon minecraft:sheep ~ ~1.8 ~ {Tags:["color_names"], Color:0b, Age:-2000, DeathLootTable:"minecraft:empty", Silent:true, DeathTime:19, NoAI:true, Invulnerable:true, NoGravity:true, ActiveEffects: [{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}
execute as @a[scores={heldDye=1..,viewPitch=..-75},team=white] at @s unless entity @e[tag=color_names, distance=..3] run summon minecraft:sheep ~ ~1.8 ~ {Tags:["color_names"], Color:0b, Age:-2000, DeathLootTable:"minecraft:empty", Silent:true, DeathTime:19, NoAI:true, Invulnerable:true, NoGravity:true, ActiveEffects: [{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}
# gold
execute as @a[scores={heldDye=1..,viewPitch=..-75},team=gold] at @s unless entity @e[tag=color_names, distance=..3] run summon minecraft:sheep ~ ~1.8 ~ {Tags:["color_names"], Color:1b, Age:-2000, DeathLootTable:"minecraft:empty", Silent:true, DeathTime:19, NoAI:true, Invulnerable:true, NoGravity:true, ActiveEffects: [{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}
# aqua
execute as @a[scores={heldDye=1..,viewPitch=..-75},team=aqua] at @s unless entity @e[tag=color_names, distance=..3] run summon minecraft:sheep ~ ~1.8 ~ {Tags:["color_names"], Color:2b, Age:-2000, DeathLootTable:"minecraft:empty", Silent:true, DeathTime:19, NoAI:true, Invulnerable:true, NoGravity:true, ActiveEffects: [{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}
# blue
execute as @a[scores={heldDye=1..,viewPitch=..-75},team=blue] at @s unless entity @e[tag=color_names, distance=..3] run summon minecraft:sheep ~ ~1.8 ~ {Tags:["color_names"], Color:3b, Age:-2000, DeathLootTable:"minecraft:empty", Silent:true, DeathTime:19, NoAI:true, Invulnerable:true, NoGravity:true, ActiveEffects: [{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}
# yellow
execute as @a[scores={heldDye=1..,viewPitch=..-75},team=yellow] at @s unless entity @e[tag=color_names, distance=..3] run summon minecraft:sheep ~ ~1.8 ~ {Tags:["color_names"], Color:4b, Age:-2000, DeathLootTable:"minecraft:empty", Silent:true, DeathTime:19, NoAI:true, Invulnerable:true, NoGravity:true, ActiveEffects: [{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}
# green
execute as @a[scores={heldDye=1..,viewPitch=..-75},team=green] at @s unless entity @e[tag=color_names, distance=..3] run summon minecraft:sheep ~ ~1.8 ~ {Tags:["color_names"], Color:5b, Age:-2000, DeathLootTable:"minecraft:empty", Silent:true, DeathTime:19, NoAI:true, Invulnerable:true, NoGravity:true, ActiveEffects: [{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}
# light_purple
execute as @a[scores={heldDye=1..,viewPitch=..-75},team=light_purple] at @s unless entity @e[tag=color_names, distance=..3] run summon minecraft:sheep ~ ~1.8 ~ {Tags:["color_names"], Color:6b, Age:-2000, DeathLootTable:"minecraft:empty", Silent:true, DeathTime:19, NoAI:true, Invulnerable:true, NoGravity:true, ActiveEffects: [{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}
# dark_gray
execute as @a[scores={heldDye=1..,viewPitch=..-75},team=dark_gray] at @s unless entity @e[tag=color_names, distance=..3] run summon minecraft:sheep ~ ~1.8 ~ {Tags:["color_names"], Color:7b, Age:-2000, DeathLootTable:"minecraft:empty", Silent:true, DeathTime:19, NoAI:true, Invulnerable:true, NoGravity:true, ActiveEffects: [{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}
# gray
execute as @a[scores={heldDye=1..,viewPitch=..-75},team=gray] at @s unless entity @e[tag=color_names, distance=..3] run summon minecraft:sheep ~ ~1.8 ~ {Tags:["color_names"], Color:8b, Age:-2000, DeathLootTable:"minecraft:empty", Silent:true, DeathTime:19, NoAI:true, Invulnerable:true, NoGravity:true, ActiveEffects: [{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}
# dark_aqua
execute as @a[scores={heldDye=1..,viewPitch=..-75},team=dark_aqua] at @s unless entity @e[tag=color_names, distance=..3] run summon minecraft:sheep ~ ~1.8 ~ {Tags:["color_names"], Color:9b, Age:-2000, DeathLootTable:"minecraft:empty", Silent:true, DeathTime:19, NoAI:true, Invulnerable:true, NoGravity:true, ActiveEffects: [{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}
# dark_purple
execute as @a[scores={heldDye=1..,viewPitch=..-75},team=dark_purple] at @s unless entity @e[tag=color_names, distance=..3] run summon minecraft:sheep ~ ~1.8 ~ {Tags:["color_names"], Color:10b, Age:-2000, DeathLootTable:"minecraft:empty", Silent:true, DeathTime:19, NoAI:true, Invulnerable:true, NoGravity:true, ActiveEffects: [{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}
# dark_blue
execute as @a[scores={heldDye=1..,viewPitch=..-75},team=dark_blue] at @s unless entity @e[tag=color_names, distance=..3] run summon minecraft:sheep ~ ~1.8 ~ {Tags:["color_names"], Color:11b, Age:-2000, DeathLootTable:"minecraft:empty", Silent:true, DeathTime:19, NoAI:true, Invulnerable:true, NoGravity:true, ActiveEffects: [{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}
# dark_red
execute as @a[scores={heldDye=1..,viewPitch=..-75},team=dark_red] at @s unless entity @e[tag=color_names, distance=..3] run summon minecraft:sheep ~ ~1.8 ~ {Tags:["color_names"], Color:12b, Age:-2000, DeathLootTable:"minecraft:empty", Silent:true, DeathTime:19, NoAI:true, Invulnerable:true, NoGravity:true, ActiveEffects: [{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}
# dark_green
execute as @a[scores={heldDye=1..,viewPitch=..-75},team=dark_green] at @s unless entity @e[tag=color_names, distance=..3] run summon minecraft:sheep ~ ~1.8 ~ {Tags:["color_names"], Color:13b, Age:-2000, DeathLootTable:"minecraft:empty", Silent:true, DeathTime:19, NoAI:true, Invulnerable:true, NoGravity:true, ActiveEffects: [{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}
# red
execute as @a[scores={heldDye=1..,viewPitch=..-75},team=red] at @s unless entity @e[tag=color_names, distance=..3] run summon minecraft:sheep ~ ~1.8 ~ {Tags:["color_names"], Color:14b, Age:-2000, DeathLootTable:"minecraft:empty", Silent:true, DeathTime:19, NoAI:true, Invulnerable:true, NoGravity:true, ActiveEffects: [{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}
# black
execute as @a[scores={heldDye=1..,viewPitch=..-75},team=black] at @s unless entity @e[tag=color_names, distance=..3] run summon minecraft:sheep ~ ~1.8 ~ {Tags:["color_names"], Color:15b, Age:-2000, DeathLootTable:"minecraft:empty", Silent:true, DeathTime:19, NoAI:true, Invulnerable:true, NoGravity:true, ActiveEffects: [{Id: 14, Amplifier: 1, Duration: 999999, ShowParticles: false}]}


# reset heldDye
execute as @a[scores={heldDye=1..}] run scoreboard players set @s heldDye 0


# play particle based on sheep dummy color
# white
execute as @e[tag=color_names, nbt={Color:0b}] at @s at @p[team=!white, distance=..3] run particle minecraft:item minecraft:bone_meal ~ ~2.3 ~ 0.3 0.1 0.3 0.05 8
# gold
execute as @e[tag=color_names, nbt={Color:1b}] at @s at @p[team=!gold, distance=..3] run particle minecraft:item minecraft:orange_dye ~ ~2.3 ~ 0.3 0.1 0.3 0.05 8
# aqua
execute as @e[tag=color_names, nbt={Color:2b}] at @s at @p[team=!aqua, distance=..3] run particle minecraft:item minecraft:magenta_dye ~ ~2.3 ~ 0.3 0.1 0.3 0.05 8
# blue
execute as @e[tag=color_names, nbt={Color:3b}] at @s at @p[team=!blue, distance=..3] run particle minecraft:item minecraft:light_blue_dye ~ ~2.3 ~ 0.3 0.1 0.3 0.05 8
# yellow
execute as @e[tag=color_names, nbt={Color:4b}] at @s at @p[team=!yellow, distance=..3] run particle minecraft:item minecraft:dandelion_yellow ~ ~2.3 ~ 0.3 0.1 0.3 0.05 8
# green
execute as @e[tag=color_names, nbt={Color:5b}] at @s at @p[team=!green, distance=..3] run particle minecraft:item minecraft:lime_dye ~ ~2.3 ~ 0.3 0.1 0.3 0.05 8
# light_purple
execute as @e[tag=color_names, nbt={Color:6b}] at @s at @p[team=!light_purple, distance=..3] run particle minecraft:item minecraft:pink_dye ~ ~2.3 ~ 0.3 0.1 0.3 0.05 8
# dark_gray
execute as @e[tag=color_names, nbt={Color:7b}] at @s at @p[team=!dark_gray, distance=..3] run particle minecraft:item minecraft:gray_dye ~ ~2.3 ~ 0.3 0.1 0.3 0.05 8
# gray
execute as @e[tag=color_names, nbt={Color:8b}] at @s at @p[team=!gray, distance=..3] run particle minecraft:item minecraft:light_gray_dye ~ ~2.3 ~ 0.3 0.1 0.3 0.05 8
# dark_aqua
execute as @e[tag=color_names, nbt={Color:9b}] at @s at @p[team=!dark_aqua, distance=..3] run particle minecraft:item minecraft:cyan_dye ~ ~2.3 ~ 0.3 0.1 0.3 0.05 8
# dark_purple
execute as @e[tag=color_names, nbt={Color:10b}] at @s at @p[team=!dark_purple, distance=..3] run particle minecraft:item minecraft:purple_dye ~ ~2.3 ~ 0.3 0.1 0.3 0.05 8
# dark_blue
execute as @e[tag=color_names, nbt={Color:11b}] at @s at @p[team=!dark_blue, distance=..3] run particle minecraft:item minecraft:lapis_lazuli ~ ~2.3 ~ 0.3 0.1 0.3 0.05 8
# dark_red
execute as @e[tag=color_names, nbt={Color:12b}] at @s at @p[team=!dark_red, distance=..3] run particle minecraft:item minecraft:cocoa_beans ~ ~2.3 ~ 0.3 0.1 0.3 0.05 8
# dark_green
execute as @e[tag=color_names, nbt={Color:13b}] at @s at @p[team=!dark_green, distance=..3] run particle minecraft:item minecraft:cactus_green ~ ~2.3 ~ 0.3 0.1 0.3 0.05 8
# red
execute as @e[tag=color_names, nbt={Color:14b}] at @s at @p[team=!red, distance=..3] run particle minecraft:item minecraft:rose_red ~ ~2.3 ~ 0.3 0.1 0.3 0.05 8
# black
execute as @e[tag=color_names, nbt={Color:15b}] at @s at @p[team=!black, distance=..3] run particle minecraft:item minecraft:ink_sac ~ ~2.3 ~ 0.3 0.1 0.3 0.05 8


# play sound based on sheep dummy color
# white
execute as @e[tag=color_names, nbt={Color:0b}] at @s at @p[team=!white, distance=..3] run playsound minecraft:item.bottle.empty player @a ~ ~2.3 ~ 1 1.4
# gold
execute as @e[tag=color_names, nbt={Color:1b}] at @s at @p[team=!gold, distance=..3] run playsound minecraft:item.bottle.empty player @a ~ ~2.3 ~ 1 1.4
# aqua
execute as @e[tag=color_names, nbt={Color:2b}] at @s at @p[team=!aqua, distance=..3] run playsound minecraft:item.bottle.empty player @a ~ ~2.3 ~ 1 1.4
# blue
execute as @e[tag=color_names, nbt={Color:3b}] at @s at @p[team=!blue, distance=..3] run playsound minecraft:item.bottle.empty player @a ~ ~2.3 ~ 1 1.4
# yellow
execute as @e[tag=color_names, nbt={Color:4b}] at @s at @p[team=!yellow, distance=..3] run playsound minecraft:item.bottle.empty player @a ~ ~2.3 ~ 1 1.4
# green
execute as @e[tag=color_names, nbt={Color:5b}] at @s at @p[team=!green, distance=..3] run playsound minecraft:item.bottle.empty player @a ~ ~2.3 ~ 1 1.4
# light_purple
execute as @e[tag=color_names, nbt={Color:6b}] at @s at @p[team=!light_purple, distance=..3] run playsound minecraft:item.bottle.empty player @a ~ ~2.3 ~ 1 1.4
# dark_gray
execute as @e[tag=color_names, nbt={Color:7b}] at @s at @p[team=!dark_gray, distance=..3] run playsound minecraft:item.bottle.empty player @a ~ ~2.3 ~ 1 1.4
# gray
execute as @e[tag=color_names, nbt={Color:8b}] at @s at @p[team=!gray, distance=..3] run playsound minecraft:item.bottle.empty player @a ~ ~2.3 ~ 1 1.4
# dark_aqua
execute as @e[tag=color_names, nbt={Color:9b}] at @s at @p[team=!dark_aqua, distance=..3] run playsound minecraft:item.bottle.empty player @a ~ ~2.3 ~ 1 1.4
# dark_purple
execute as @e[tag=color_names, nbt={Color:10b}] at @s at @p[team=!dark_purple, distance=..3] run playsound minecraft:item.bottle.empty player @a ~ ~2.3 ~ 1 1.4
# dark_blue
execute as @e[tag=color_names, nbt={Color:11b}] at @s at @p[team=!dark_blue, distance=..3] run playsound minecraft:item.bottle.empty player @a ~ ~2.3 ~ 1 1.4
# dark_red
execute as @e[tag=color_names, nbt={Color:12b}] at @s at @p[team=!dark_red, distance=..3] run playsound minecraft:item.bottle.empty player @a ~ ~2.3 ~ 1 1.4
# dark_green
execute as @e[tag=color_names, nbt={Color:13b}] at @s at @p[team=!dark_green, distance=..3] run playsound minecraft:item.bottle.empty player @a ~ ~2.3 ~ 1 1.4
# red
execute as @e[tag=color_names, nbt={Color:14b}] at @s at @p[team=!red, distance=..3] run playsound minecraft:item.bottle.empty player @a ~ ~2.3 ~ 1 1.4
# black
execute as @e[tag=color_names, nbt={Color:15b}] at @s at @p[team=!black, distance=..3] run playsound minecraft:item.bottle.empty player @a ~ ~2.3 ~ 1 1.4


# join team based on sheep dummy color
# white
execute as @e[tag=color_names, nbt={Color:0b}] at @s run team join white @p[team=!white, distance=..3]
# gold
execute as @e[tag=color_names, nbt={Color:1b}] at @s run team join gold @p[team=!gold, distance=..3]
# aqua
execute as @e[tag=color_names, nbt={Color:2b}] at @s run team join aqua @p[team=!aqua, distance=..3]
# blue
execute as @e[tag=color_names, nbt={Color:3b}] at @s run team join blue @p[team=!blue, distance=..3]
# yellow
execute as @e[tag=color_names, nbt={Color:4b}] at @s run team join yellow @p[team=!yellow, distance=..3]
# green
execute as @e[tag=color_names, nbt={Color:5b}] at @s run team join green @p[team=!green, distance=..3]
# light_purple
execute as @e[tag=color_names, nbt={Color:6b}] at @s run team join light_purple @p[team=!light_purple, distance=..3]
# dark_gray
execute as @e[tag=color_names, nbt={Color:7b}] at @s run team join dark_gray @p[team=!dark_gray, distance=..3]
# gray
execute as @e[tag=color_names, nbt={Color:8b}] at @s run team join gray @p[team=!gray, distance=..3]
# dark_aqua
execute as @e[tag=color_names, nbt={Color:9b}] at @s run team join dark_aqua @p[team=!dark_aqua, distance=..3]
# dark_purple
execute as @e[tag=color_names, nbt={Color:10b}] at @s run team join dark_purple @p[team=!dark_purple, distance=..3]
# dark_blue
execute as @e[tag=color_names, nbt={Color:11b}] at @s run team join dark_blue @p[team=!dark_blue, distance=..3]
# dark_red
execute as @e[tag=color_names, nbt={Color:12b}] at @s run team join dark_red @p[team=!dark_red, distance=..3]
# dark_green
execute as @e[tag=color_names, nbt={Color:13b}] at @s run team join dark_green @p[team=!dark_green, distance=..3]
# red
execute as @e[tag=color_names, nbt={Color:14b}] at @s run team join red @p[team=!red, distance=..3]
# black
execute as @e[tag=color_names, nbt={Color:15b}] at @s run team join black @p[team=!black, distance=..3]


# kill sheep dummy
tp @e[tag=color_names, scores={entityTicks=8}] ~ ~-100 ~
kill @e[tag=color_names, scores={entityTicks=10..}]
