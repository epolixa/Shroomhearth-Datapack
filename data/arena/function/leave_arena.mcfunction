# send message
tellraw @s[advancements={arena:inside_arena=true}] {"translate":"arena.leaving","hover_event":{"action":"show_text","value":{"translate":"arena.tooltip"}}}

# revoke opposing trigger
advancement revoke @s[advancements={arena:inside_arena=true}] only arena:inside_arena