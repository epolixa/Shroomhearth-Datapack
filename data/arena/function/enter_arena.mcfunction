# send message
tellraw @s[advancements={arena:outside_arena=true}] {"translate":"arena.entering","hover_event":{"action":"show_text","value":{"translate":"arena.tooltip"}}}

# revoke opposing trigger
advancement revoke @s[advancements={arena:outside_arena=true}] only arena:outside_arena