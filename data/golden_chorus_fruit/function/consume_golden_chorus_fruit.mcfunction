advancement revoke @s only golden_chorus_fruit:consume_golden_chorus_fruit

execute if predicate golden_chorus_fruit:is_sneaking_above_height_min run function golden_chorus_fruit:consume_golden_chorus_fruit_sneaking
execute unless predicate golden_chorus_fruit:is_sneaking_above_height_min run spreadplayers ~ ~ 0 100 false @s