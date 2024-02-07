# say adding
execute store result score .index curios.concepts.index run data get storage curios_concepts:slot_curio CurioItems.Slot
curios add charm @s
execute if score .index curios.concepts.index matches 0 run curios replace charm 0 @s with air
execute if score .index curios.concepts.index matches 1 run curios replace charm 1 @s with air
execute if score .index curios.concepts.index matches 2 run curios replace charm 2 @s with air
