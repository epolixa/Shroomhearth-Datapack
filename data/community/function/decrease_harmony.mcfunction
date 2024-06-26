# Decrease harmony by 1 if they currently have any.
scoreboard players remove @s[scores={harmony=1..}] harmony 1

# Reset presence
scoreboard players set @s presence 0