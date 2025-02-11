# Executes every second from the context of every Omen Ender Dragon

# Gain passive rage at certain health thresholds
scoreboard players add @s[scores={bossHealthPercent=51..75}] rage 1
scoreboard players add @s[scores={bossHealthPercent=26..50}] rage 2
scoreboard players add @s[scores={bossHealthPercent=0..25}] rage 3

# Update rage bossbar with new value
bossbar set ender_dragon:dragon_rage max 64
execute store result bossbar ender_dragon:dragon_rage value run scoreboard players get @s rage

# Update rage bossbar player visibility
bossbar set ender_dragon:dragon_rage players @a[predicate=ender_dragon:on_main_end_island]

# Execute powers at max rage while still alive
execute as @s[scores={rage=64..,bossHealth=1..}] run function ender_dragon:powers/cast

# Tick snatch cooldown
execute if score @s snatch_cooldown matches 1.. run scoreboard players remove @s snatch_cooldown 1