# revoke opposing trigger
advancement revoke @s only wilderness:inside_wilderness

# send message
tellraw @s {"translate":"wilderness.leaving","hoverEvent":{"action":"show_text","contents":{"translate":"wilderness.tooltip"}}}