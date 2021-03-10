# dissonance for players using porcelain in other dimensions
execute if predicate porcelain:use_porcelain_in_other run title @s actionbar {"color":"white","translate":"item.minecraft.porcelain.beckon_dissonance"}

# relative to player using porcelain in overworld
execute if predicate porcelain:use_porcelain_in_overworld run function porcelain:enter_porcelain

# activate porcelain item in porcelain
execute if predicate porcelain:use_porcelain_in_porcelain run function porcelain:exit_porcelain

# remove score
scoreboard players reset @s usePorcelain