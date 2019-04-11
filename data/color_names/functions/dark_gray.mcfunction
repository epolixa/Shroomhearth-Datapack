team add dark_gray "Dark Gray"
team modify dark_gray color dark_gray
team join dark_gray @s
execute as @s[advancements={color_names:color_names=false}] run function color_names:check_adv