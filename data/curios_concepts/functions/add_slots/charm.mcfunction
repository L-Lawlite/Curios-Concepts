# say running
advancement revoke @s only curios_concepts:charm_slot_add
data remove storage curios_concepts:slot_curio CurioItems
data modify storage curios_concepts:slot_curio CurioItems set from entity @s ForgeCaps."curios:inventory".Curios[{Identifier:"charm"}].StacksHandler.Stacks.Items[{id:"minecraft:nether_star",Count:1b,tag:{SlotStar:1.0d}}]
function curios_concepts:calculate_slots
execute if data storage curios_concepts:slot_curio CurioItems if score @s curios.concepts.charm matches 1..2 run function curios_concepts:add_slots/adding/charm
