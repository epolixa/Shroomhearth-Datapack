# revoke trigger
advancement revoke @s only community:using_harmonized_chorus_fruit

# capture hcfUUID components
execute store result score @s hcfUUID1 run data get entity @s SelectedItem.tag.targetPlayerUUID[0]
execute store result score @s hcfUUID2 run data get entity @s SelectedItem.tag.targetPlayerUUID[1]
execute store result score @s hcfUUID3 run data get entity @s SelectedItem.tag.targetPlayerUUID[2]
execute store result score @s hcfUUID4 run data get entity @s SelectedItem.tag.targetPlayerUUID[3]

# warn player if no player to tp to
execute unless entity @p[distance=0.1..] run tellraw @s "no player found"