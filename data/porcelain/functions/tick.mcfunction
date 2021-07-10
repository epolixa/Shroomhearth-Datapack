# players using porcelain
execute as @a[predicate=porcelain:use_porcelain] at @s run function porcelain:use_porcelain

# tick in porcelain
execute in minecraft:the_porcelain if entity @p[distance=0..] run function porcelain:tick_porcelain