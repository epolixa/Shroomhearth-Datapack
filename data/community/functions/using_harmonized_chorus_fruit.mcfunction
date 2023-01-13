# revoke trigger
advancement revoke @s only community:using_harmonized_chorus_fruit

# warn player if no player to tp to
execute unless entity @p[distance=0.1..] run tellraw @s "no player found"