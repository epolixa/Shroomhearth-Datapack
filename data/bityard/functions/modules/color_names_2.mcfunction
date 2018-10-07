################################################################
# Color Names 2.0
# sleep in a colored bed to change your name color
################################################################

# join sleeping player to a team based on the color of bed they are in
execute as @a[nbt={Sleeping:1b}] at @s if block ~ ~ ~ minecraft:white_bed run team join white @p[team=!white]
