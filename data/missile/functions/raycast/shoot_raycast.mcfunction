particle minecraft:smoke ~ ~ ~ 0 0 0 0 0
execute positioned ^ ^ ^0.1 unless block ~ ~ ~ air run function missile:raycast/collide
execute positioned ^ ^ ^0.1 if block ~ ~ ~ air run function missile:raycast/shoot_raycast
