tag @s add spawnMarker

execute store result entity @s Pos[0] double 1 run scoreboard players get .SpawnX SpawnPoint
execute store result entity @s Pos[1] double 1 run scoreboard players get .SpawnY SpawnPoint
execute store result entity @s Pos[2] double 1 run scoreboard players get .SpawnZ SpawnPoint
execute in minecraft:overworld at @s run tp @p[tag=Me] ~ ~ ~