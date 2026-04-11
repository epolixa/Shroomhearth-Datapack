# send message
tellraw @s[advancements={shroomhearth:arena/outside_arena=true}] {"translate":"arena.entering","hover_event":{"action":"show_text","value":{"translate":"arena.tooltip"}}}

# revoke opposing trigger
advancement revoke @s[advancements={shroomhearth:arena/outside_arena=true}] only shroomhearth:arena/outside_arena