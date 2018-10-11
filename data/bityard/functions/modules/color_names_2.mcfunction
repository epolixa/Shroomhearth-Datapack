################################################################
# Color Names 2.0
# sleep in a colored bed to change your name color
################################################################

# join sleeping player to a team based on the color of bed they are in
execute as @a[team=!white,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:white_bed run team join white @p
execute as @a[team=!gold,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:orange_bed run team join gold @p
execute as @a[team=!aqua,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:magenta_bed run team join aqua @p
execute as @a[team=!blue,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:light_blue_bed run team join blue @p
execute as @a[team=!yellow,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:yellow_bed run team join yellow @p
execute as @a[team=!green,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:lime_bed run team join green @p
execute as @a[team=!light_purple,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:pink_bed run team join light_purple @p
execute as @a[team=!dark_gray,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:gray_bed run team join dark_gray @p
execute as @a[team=!gray,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:light_gray_bed run team join gray @p
execute as @a[team=!dark_aqua,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:cyan_bed run team join dark_aqua @p
execute as @a[team=!dark_purple,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:purple_bed run team join dark_purple @p
execute as @a[team=!dark_blue,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:blue_bed run team join dark_blue @p
execute as @a[team=!dark_red,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:brown_bed run team join dark_red @p
execute as @a[team=!dark_green,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:green_bed run team join dark_green @p
execute as @a[team=!red,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:red_bed run team join red @p
execute as @a[team=!black,nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:black_bed run team join black @p