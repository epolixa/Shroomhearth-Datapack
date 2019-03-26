################################################################
# Color Names 2.0
# sleep in a colored bed to change your name color
################################################################

# join sleeping player to a team based on the color of bed they are in
execute as @a[team=!white,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:white_bed run function color_names:white

execute as @a[team=!gold,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:orange_bed run function color_names:gold

execute as @a[team=!aqua,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:magenta_bed run function color_names:aqua

execute as @a[team=!blue,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:light_blue_bed run function color_names:blue

execute as @a[team=!yellow,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:yellow_bed run function color_names:yellow

execute as @a[team=!green,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:lime_bed run function color_names:green

execute as @a[team=!light_purple,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:pink_bed run function color_names:light_purple

execute as @a[team=!dark_gray,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:gray_bed run function color_names:dark_gray

execute as @a[team=!gray,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:light_gray_bed run function color_names:gray

execute as @a[team=!dark_aqua,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:cyan_bed run function color_names:dark_aqua

execute as @a[team=!dark_purple,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:purple_bed run function color_names:dark_purple

execute as @a[team=!dark_blue,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:blue_bed run function color_names:dark_blue

execute as @a[team=!dark_red,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:brown_bed run function color_names:dark_red

execute as @a[team=!dark_green,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:green_bed run function color_names:dark_green

execute as @a[team=!red,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:red_bed run function color_names:red

execute as @a[team=!black,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:black_bed run function color_names:black