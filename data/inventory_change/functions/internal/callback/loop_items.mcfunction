# checking if element exist
execute if score inv.slots_num inv.slot matches 0 run return 0
data modify storage inventory_change:item_looping Slot set from storage inventory_change:inventory_storage Items[-1].Slot 
function inventory_change:macros/add_fire_aspect with storage inventory_change:item_looping
data remove storage inventory_change:inventory_storage Items[-1]
scoreboard players remove inv.slots_num inv.slot 1
return run function inventory_change:internal/callback/loop_items
