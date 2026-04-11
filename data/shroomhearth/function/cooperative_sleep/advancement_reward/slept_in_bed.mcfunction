# join slept player to a team based on the color of bed they are in
execute as @s[team=!aqua] at @s if block ~ ~ ~ minecraft:magenta_bed run team join aqua @s
execute as @s[team=!black] at @s if block ~ ~ ~ minecraft:black_bed run team join black @s
execute as @s[team=!blue] at @s if block ~ ~ ~ minecraft:light_blue_bed run team join blue @s
execute as @s[team=!dark_aqua] at @s if block ~ ~ ~ minecraft:cyan_bed run team join dark_aqua @s
execute as @s[team=!dark_blue] at @s if block ~ ~ ~ minecraft:blue_bed run team join dark_blue @s
execute as @s[team=!dark_gray] at @s if block ~ ~ ~ minecraft:gray_bed run team join dark_gray @s
execute as @s[team=!dark_green] at @s if block ~ ~ ~ minecraft:green_bed run team join dark_green @s
execute as @s[team=!dark_purple] at @s if block ~ ~ ~ minecraft:purple_bed run team join dark_purple @s
execute as @s[team=!dark_red] at @s if block ~ ~ ~ minecraft:brown_bed run team join dark_red @s
execute as @s[team=!gold] at @s if block ~ ~ ~ minecraft:orange_bed run team join gold @s
execute as @s[team=!gray] at @s if block ~ ~ ~ minecraft:light_gray_bed run team join gray @s
execute as @s[team=!green] at @s if block ~ ~ ~ minecraft:lime_bed run team join green @s
execute as @s[team=!light_purple] at @s if block ~ ~ ~ minecraft:pink_bed run team join light_purple @s
execute as @s[team=!red] at @s if block ~ ~ ~ minecraft:red_bed run team join red @s
execute as @s[team=!white] at @s if block ~ ~ ~ minecraft:white_bed run team join white @s
execute as @s[team=!yellow] at @s if block ~ ~ ~ minecraft:yellow_bed run team join yellow @s

# play a sound
execute at @s run playsound minecraft:block.wool.step player @a ~ ~ ~ 1 0.5

# Announce to ther players in the same dimension that the player has fallen asleep
tellraw @p[distance=0.0625..] [{"selector":"@s"},{"text":" fell asleep","color":"white"}]

# give slept_in_bed tag
tag @s add sleeping

# revoke trigger advancement
advancement revoke @s only shroomhearth:cooperative_sleep/slept_in_bed