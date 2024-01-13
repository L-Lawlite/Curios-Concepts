# execute store result score item.egg inv.slot run data get entity @s Inventory[{id:"minecraft:egg"}].Slot
advancement revoke @s only inventory_change:enchant_fire
data modify storage inventory_change:inventory_storage Items append from entity @s Inventory[{id:"minecraft:egg"}]
data remove storage inventory_change:inventory_storage Items[{tag:{Enchantments:[{id:"minecraft:fire_aspect"}]}}]
execute store result score inv.slots_num inv.slot run data get storage inventory_change:inventory_storage Items
function inventory_change:internal/callback/loop_items