# Executor: A player with 60 or more harmony score
# Position: Root

# Roll predicate
execute if predicate harmony:harmony_cap_spawn_chance at @s run function harmony:harmony_cap/spawn

# Reset harmony
scoreboard players set @s harmony 0