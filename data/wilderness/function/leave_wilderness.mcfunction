# send message
tellraw @s[advancements={wilderness:inside_wilderness=true}] {"translate":"wilderness.leaving","hover_event":{"action":"show_text","value":{"translate":"wilderness.tooltip"}}}

# revoke opposing trigger
advancement revoke @s[advancements={wilderness:inside_wilderness=true}] only wilderness:inside_wilderness