# send message
tellraw @s[advancements={arena:outside_arena=true}] {"translate":"arena.entering","hoverEvent":{"action":"show_text","contents":{"translate":"arena.tooltip"}}}

# revoke opposing trigger
advancement revoke @s[advancements={arena:outside_arena=true}] only arena:outside_arena