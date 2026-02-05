# capture hcfUUID components
execute store result score @s hcfuuid_1 run data get entity @s SelectedItem.components."minecraft:custom_data".targetPlayerUUID[0]
execute store result score @s hcfuuid_2 run data get entity @s SelectedItem.components."minecraft:custom_data".targetPlayerUUID[1]
execute store result score @s hcfuuid_3 run data get entity @s SelectedItem.components."minecraft:custom_data".targetPlayerUUID[2]
execute store result score @s hcfuuid_4 run data get entity @s SelectedItem.components."minecraft:custom_data".targetPlayerUUID[3]

# warn player if they cannot harmonize
scoreboard players reset @s targetPlayerFound
execute positioned as @a[predicate=!porcelain:in_porcelain,sort=nearest] if score @s hcfuuid_1 = @p uuid_1 if score @s hcfuuid_2 = @p uuid_2 if score @s hcfuuid_3 = @p uuid_3 if score @s hcfuuid_4 = @p uuid_4 run scoreboard players set @s targetPlayerFound 1
execute unless score @s targetPlayerFound matches 1 run title @s actionbar "You cannot harmonize with that Player right now"

# revoke trigger after brief delay
schedule function community:hcf/revoke_using 1s