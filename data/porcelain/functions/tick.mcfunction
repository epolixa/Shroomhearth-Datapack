# players using porcelain
execute as @a[predicate=porcelain:use_porcelain] run scoreboard players set @s usePorcelain 1
execute as @a[predicate=porcelain:use_porcelain] run scoreboard players reset @s useWarpedFungusStick
execute as @a[predicate=porcelain:use_porcelain] at @s run function porcelain:use_porcelain

# tick in porcelain
execute in minecraft:the_porcelain if entity @p[distance=0..] run function porcelain:tick_porcelain