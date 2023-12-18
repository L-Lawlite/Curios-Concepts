advancement revoke @s only disable_end:end_dimension
# tag @s add Me
# execute store result score .SpawnX SpawnPoint run data get entity @s SpawnX 
# execute store result score .SpawnY SpawnPoint run data get entity @s SpawnY 
# execute store result score .SpawnZ SpawnPoint run data get entity @s SpawnZ 

# execute summon minecraft:armor_stand run function disable_end:summon_marker
# tag @s remove Me

data modify storage disable_end:spawn_coods SpawnPointX set from entity @s SpawnX
data modify storage disable_end:spawn_coods SpawnPointY set from entity @s SpawnY
data modify storage disable_end:spawn_coods SpawnPointZ set from entity @s SpawnZ
data modify storage disable_end:spawn_coods Dimension set from entity @s SpawnDimension

function disable_end:teleport_to_spawn with storage disable_end:spawn_coods
