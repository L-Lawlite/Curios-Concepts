execute as @a[scores={rt_click=1..}] at @s positioned ^ ^ ^0.1 anchored eyes run function missile:raycast/start_raycast 
scoreboard players set @a[scores={rt_click=1..}] rt_click 0