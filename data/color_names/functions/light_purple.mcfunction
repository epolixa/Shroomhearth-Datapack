team add light_purple "Light Purple"
team modify light_purple color light_purple
team join light_purple @s
execute as @s[advancements={color_names:color_names=false}] run function color_names:check_adv