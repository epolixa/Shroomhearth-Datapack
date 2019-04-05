################################################################
# Color Names 2.0
# sleep in a colored bed to change your name color
################################################################

# join sleeping player to a team based on the color of bed they are in
execute as @s[team=!white] at @s if block ~ ~ ~ minecraft:white_bed run function color_names:white
execute as @s[team=!gold] at @s if block ~ ~ ~ minecraft:orange_bed run function color_names:gold
execute as @s[team=!aqua] at @s if block ~ ~ ~ minecraft:magenta_bed run function color_names:aqua
execute as @s[team=!blue] at @s if block ~ ~ ~ minecraft:light_blue_bed run function color_names:blue
execute as @s[team=!yellow] at @s if block ~ ~ ~ minecraft:yellow_bed run function color_names:yellow
execute as @s[team=!green] at @s if block ~ ~ ~ minecraft:lime_bed run function color_names:green
execute as @s[team=!light_purple] at @s if block ~ ~ ~ minecraft:pink_bed run function color_names:light_purple
execute as @s[team=!dark_gray] at @s if block ~ ~ ~ minecraft:gray_bed run function color_names:dark_gray
execute as @s[team=!gray] at @s if block ~ ~ ~ minecraft:light_gray_bed run function color_names:gray
execute as @s[team=!dark_aqua] at @s if block ~ ~ ~ minecraft:cyan_bed run function color_names:dark_aqua
execute as @s[team=!dark_purple] at @s if block ~ ~ ~ minecraft:purple_bed run function color_names:dark_purple
execute as @s[team=!dark_blue] at @s if block ~ ~ ~ minecraft:blue_bed run function color_names:dark_blue
execute as @s[team=!dark_red] at @s if block ~ ~ ~ minecraft:brown_bed run function color_names:dark_red
execute as @s[team=!dark_green] at @s if block ~ ~ ~ minecraft:green_bed run function color_names:dark_green
execute as @s[team=!red] at @s if block ~ ~ ~ minecraft:red_bed run function color_names:red
execute as @s[team=!black] at @s if block ~ ~ ~ minecraft:black_bed run function color_names:black
advancement revoke @s only color_names:slept_in_bed