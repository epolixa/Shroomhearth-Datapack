# send message
tellraw @s[advancements={wilderness:inside_wilderness=true}] {"translate":"wilderness.leaving","hoverEvent":{"action":"show_text","contents":{"translate":"wilderness.tooltip"}}}

# revoke opposing trigger
advancement revoke @s[advancements={wilderness:inside_wilderness=true}] only wilderness:inside_wilderness