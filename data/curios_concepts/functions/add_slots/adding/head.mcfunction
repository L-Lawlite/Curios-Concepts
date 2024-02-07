# say adding
execute store result score .index curios.concepts.index run data get storage curios_concepts:slot_curio CurioItems.Slot
curios add head @s
execute if score .index curios.concepts.index matches 0 run curios replace head 0 @s with air
execute if score .index curios.concepts.index matches 1 run curios replace head 1 @s with air
