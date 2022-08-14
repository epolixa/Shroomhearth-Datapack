execute as @s[tag=!random_tp_target] run function random_tp:follow

# revoke the trigger
advancement revoke @s only random_tp:touch_link