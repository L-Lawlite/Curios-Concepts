data modify storage curios_concepts:player_curio CurioSlots set from entity @s ForgeCaps."curios:inventory".Curios
execute store result score @s curios.concepts.back run data get storage curios_concepts:player_curio CurioSlots[{Identifier:"back"}].StacksHandler.Renders.Size
execute store result score @s curios.concepts.belt run data get storage curios_concepts:player_curio CurioSlots[{Identifier:"belt"}].StacksHandler.Renders.Size
execute store result score @s curios.concepts.body run data get storage curios_concepts:player_curio CurioSlots[{Identifier:"body"}].StacksHandler.Renders.Size
execute store result score @s curios.concepts.charm run data get storage curios_concepts:player_curio CurioSlots[{Identifier:"charm"}].StacksHandler.Renders.Size
execute store result score @s curios.concepts.curio run data get storage curios_concepts:player_curio CurioSlots[{Identifier:"curio"}].StacksHandler.Renders.Size
execute store result score @s curios.concepts.feet run data get storage curios_concepts:player_curio CurioSlots[{Identifier:"feet"}].StacksHandler.Renders.Size
execute store result score @s curios.concepts.goggles run data get storage curios_concepts:player_curio CurioSlots[{Identifier:"goggles"}].StacksHandler.Renders.Size
execute store result score @s curios.concepts.hands run data get storage curios_concepts:player_curio CurioSlots[{Identifier:"hands"}].StacksHandler.Renders.Size
execute store result score @s curios.concepts.head run data get storage curios_concepts:player_curio CurioSlots[{Identifier:"head"}].StacksHandler.Renders.Size
execute store result score @s curios.concepts.necklace run data get storage curios_concepts:player_curio CurioSlots[{Identifier:"necklace"}].StacksHandler.Renders.Size

