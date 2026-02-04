# Executor: Server
# Position: Spawn


# players using porcelain
execute as @a[predicate=shroomhearth:porcelain/use_porcelain] run scoreboard players set @s use_porcelain 1
execute as @a[predicate=shroomhearth:porcelain/use_porcelain] run scoreboard players reset @s use_warped_fungus_stick
execute as @a[predicate=shroomhearth:porcelain/use_porcelain] at @s run function shroomhearth:porcelain/use_porcelain

# tick in porcelain
execute in shroomhearth:the_porcelain if entity @p[distance=0..] run function shroomhearth:porcelain/tick_porcelain