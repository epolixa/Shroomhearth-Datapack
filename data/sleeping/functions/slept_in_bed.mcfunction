# join slept player to a team based on the color of bed they are in
execute as @s[team=!white] at @s if block ~ ~ ~ minecraft:white_bed run function sleeping:join_team/white
execute as @s[team=!gold] at @s if block ~ ~ ~ minecraft:orange_bed run function sleeping:join_team/gold
execute as @s[team=!aqua] at @s if block ~ ~ ~ minecraft:magenta_bed run function sleeping:join_team/aqua
execute as @s[team=!blue] at @s if block ~ ~ ~ minecraft:light_blue_bed run function sleeping:join_team/blue
execute as @s[team=!yellow] at @s if block ~ ~ ~ minecraft:yellow_bed run function sleeping:join_team/yellow
execute as @s[team=!green] at @s if block ~ ~ ~ minecraft:lime_bed run function sleeping:join_team/green
execute as @s[team=!light_purple] at @s if block ~ ~ ~ minecraft:pink_bed run function sleeping:join_team/light_purple
execute as @s[team=!dark_gray] at @s if block ~ ~ ~ minecraft:gray_bed run function sleeping:join_team/dark_gray
execute as @s[team=!gray] at @s if block ~ ~ ~ minecraft:light_gray_bed run function sleeping:join_team/gray
execute as @s[team=!dark_aqua] at @s if block ~ ~ ~ minecraft:cyan_bed run function sleeping:join_team/dark_aqua
execute as @s[team=!dark_purple] at @s if block ~ ~ ~ minecraft:purple_bed run function sleeping:join_team/dark_purple
execute as @s[team=!dark_blue] at @s if block ~ ~ ~ minecraft:blue_bed run function sleeping:join_team/dark_blue
execute as @s[team=!dark_red] at @s if block ~ ~ ~ minecraft:brown_bed run function sleeping:join_team/dark_red
execute as @s[team=!dark_green] at @s if block ~ ~ ~ minecraft:green_bed run function sleeping:join_team/dark_green
execute as @s[team=!red] at @s if block ~ ~ ~ minecraft:red_bed run function sleeping:join_team/red
execute as @s[team=!black] at @s if block ~ ~ ~ minecraft:black_bed run function sleeping:join_team/black

# play a sound
execute at @s run playsound minecraft:block.wool.step player @a ~ ~ ~ 1 0.5

# revoke trigger advancement
advancement revoke @s only sleeping:slept_in_bed