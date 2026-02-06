# Executor: Server
# Position: Spawn

#tellraw @a[tag=debug_porcelain] [{"text":"[shroomhearth:porcelain/tick] Ticking porcelain functionality"}]


# players using porcelain
execute as @a[predicate=shroomhearth:porcelain/used_porcelain] run scoreboard players set @s used_porcelain 1
execute as @a[predicate=shroomhearth:porcelain/used_porcelain] run scoreboard players reset @s used_warped_fungus_on_a_stick
execute as @a[predicate=shroomhearth:porcelain/used_porcelain] at @s run function shroomhearth:porcelain/used_porcelain

# tick in porcelain
execute if entity @p[predicate=shroomhearth:porcelain/in_the_porcelain] in shroomhearth:the_porcelain run function shroomhearth:porcelain/tick_porcelain