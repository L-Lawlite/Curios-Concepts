scoreboard players operation .ammo pistol.ammo = @s pistol.ammo

execute store result storage pistol:ammuniation Ammo.value int 1 run scoreboard players get .ammo pistol.ammo

function pistol:macros/modify_lore with storage pistol:ammuniation Ammo

item modify entity @s weapon.mainhand pistol:lore_modify

