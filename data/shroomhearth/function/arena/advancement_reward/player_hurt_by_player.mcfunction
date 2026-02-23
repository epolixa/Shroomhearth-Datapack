# for whatever reason, the "minecraft:entity_hurt_player" advancement trigger does not include player predicate array, so have to check separately

# revoke trigger
advancement revoke @s only shroomhearth:arena/player_hurt_by_player

# grant harmony if player is in arena
execute if predicate shroomhearth:arena/player_in_arena run scoreboard players add @s harmony 1