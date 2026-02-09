# Executor: A player who used bone meal on a moss block
# Position: the player

tellraw @a[tag=debug_challenges] [{"text":"[shroomhearth:challenges/advancement_reward/clown_professor/bone_meal_used_on_moss_block] "},{"selector":"@s"},{"text":" used bone meal on a moss block"}]


# Increment score
scoreboard players add @s bone_meal_used_on_moss_block 1

# Grant advancement if stat is reached
advancement grant @s[scores={bone_meal_used_on_moss_block=5000..}] only shroomhearth:challenges/clown_professor/live_mas

# Revoke triggers
advancement revoke @s only shroomhearth:challenges/clown_professor/bone_meal_used_on_moss_block