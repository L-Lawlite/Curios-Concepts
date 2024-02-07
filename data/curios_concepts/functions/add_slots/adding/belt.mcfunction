# say adding
execute store result score .index curios.concepts.index run data get storage curios_concepts:slot_curio CurioItems.Slot
curios add belt @s
execute if score .index curios.concepts.index matches 0 run curios replace belt 0 @s with air
execute if score .index curios.concepts.index matches 1 run curios replace belt 1 @s with air
execute if score .index curios.concepts.index matches 2 run curios replace belt 2 @s with air
execute if score .index curios.concepts.index matches 3 run curios replace belt 3 @s with air
execute if score .index curios.concepts.index matches 4 run curios replace belt 4 @s with air
execute if score .index curios.concepts.index matches 5 run curios replace belt 5 @s with air
