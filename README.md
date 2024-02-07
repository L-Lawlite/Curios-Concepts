# How to add slot in curios api using a item as a trigger.

This will allow a specific item to be placed in a certain curio slot and it will expand the limit of the given curio slot and consume the item.

## Make a advancement 

You have to repeat this advancement for each slot you want to make upgradable. Item nbt is not checked in this step this will be just <modid>:<id>

name it <idetifier>_slot_add.json
```json
{
    "criteria": {
        "test": {
            "trigger": "curios:equip_curio",
            "conditions": {
                "curios:slot": {
                    "slots": ["<identifier>"],
                    "item": {
                        "items":[ 
                            "<item>"
                        ]
                    }
                }
            }
        }
    },
    "rewards": {
        "function": "<namespace>:add_slots/<identifier>"
    }
}
```

Put this advancement anywhere in the your own <namespace> of datapack in advancements folder.

## Make functions

- in load function
```
scoreboard objectives add <namespace>.<identifier> dummy "<Identifier> Slots"
```

You will need 1 scoreboard objective for each identifier if you are not planning on giving that identifier upgrade functionality skip this step for the identifier

and add this line as well this will come in handy later
```
scoreboard objectives add <namepsace>.index dummy
```

- in <namespace>:calculate_slots 
  
```
data modify storage <namespace>:player_curio CurioSlots set from entity @s ForgeCaps."curios:inventory".Curios
```

And repeat the below command for each identifier
```
execute store result score @s <namespace>.<identifier> run data get storage curios_concepts:player_curio CurioSlots[{Identifier:"<identifier>"}].StacksHandler.Renders.Size
```

- in <namespace>:add_slots/<identifier>
```
advancement revoke @s only <namespace>:<idetifier>_slot_add
data remove storage <namespace>:slot_curio CurioItems
data modify storage <namespace>:slot_curio CurioItems set from entity @s ForgeCaps."curios:inventory".Curios[{Identifier:"<identifier>"}].StacksHandler.Stacks.Items[{id:"<item>",Count:<item count>b,tag:{<nbt>}}]
function <namespace>:calculate_slots
execute if data storage <namespace>:slot_curio CurioItems if score @s curios.concepts.<identifier> matches <min_numer_of_slot>..<max_number_of_slot - 1> run function <namespace>:add_slots/adding/<identifier>

```

<item count> is the count of item that is needed for this upgrade to trigger can be anything upto the stack limit of the item.
<min_numer_of_slot> is usually 1
<max_number_of_slot> is the number of slot you want limit the upgrades to like if you want to slots to be between 1 - 6 you give it 1..5


Repeat the above step for add the identifiers

- in <namespace>:add_slot/adding/<identifier>
```
execute store result score .index <namespace>.index run data get storage <namespace>:slot_curio CurioItems.Slot
curios add <identifier> @s
```


Repeat this command in same function for all index possible in the given identifier
```
execute if score .index <namespace>.index matches <number> run curios replace <identifier> <number> @s with air
```