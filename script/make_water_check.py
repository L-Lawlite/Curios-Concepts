import json
from pprint import pprint
from utility.predicates.general import any_of,all_of
from utility._typing import JsonContent

'''
template
{
    "condition": "minecraft:all_of",
    "terms": [
        {
            "condition": "minecraft:any_of",
            "terms": [
                {
                    "condition": "minecraft:location_check",
                    "offsetX": 0,
                    "offsetY": 0,
                    "offsetZ": 0,
                    "predicate": {
                        "block": {
                            "state": {
                                "waterlogged": "true"
                            }
                        }
                    }
                },
                {
                    "condition": "minecraft:location_check",
                    "offsetX": 0,
                    "offsetY": 0,
                    "offsetZ": 0,
                    "predicate": {
                        "fluid": {
                            "tag": "minecraft:water"
                        }
                    }
                }
            ]
        }
    ]
}

'''

def make_terms(offset:tuple[int,int,int]) -> list[JsonContent]:
    x,y,z = offset
    base = [
                {
                    "condition": "minecraft:location_check",
                    "offsetX": x,
                    "offsetY": y,
                    "offsetZ": z,
                    "predicate": {
                        "block": {
                            "state": {
                                "waterlogged": "true"
                            }
                        }
                    }
                },
                {
                    "condition": "minecraft:location_check",
                    "offsetX": x,
                    "offsetY": y,
                    "offsetZ": z,
                    "predicate": {
                        "fluid": {
                            "tag": "minecraft:water"
                        }
                    }
                }
            ]
    return base

def main() -> None:
    coods_to_check = [(x,y,z) for x in range(-1,2) for y in range(-1,2) for z in range(-1,2)]
    coods_to_check.remove((0,0,0))
    water_check = all_of([any_of(make_terms(offset)) for offset in coods_to_check])
    with open('./data/conduit_power/predicates/check_water.json','w') as f:
        json.dump(water_check,f,indent=2)

if __name__ == "__main__":
    main()
