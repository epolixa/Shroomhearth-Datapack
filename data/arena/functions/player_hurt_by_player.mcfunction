# for whatever reason, the "minecraft:entity_hurt_player" advancement trigger does not include player predicate array, so have to check separately

# revoke trigger
advancement revoke @s only arena:player_hurt_by_player

# grant presence if player is in arena
execute if predicate arena:player_in_arena run scoreboard players add @s presence 1