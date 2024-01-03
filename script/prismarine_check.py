import json
from pprint import pprint
from utility.predicates.general import any_of,all_of
from utility._typing import JsonContent


def make_term(offset:tuple[int,int,int]) -> JsonContent:
    x,y,z = offset
    base = {
        "condition": "minecraft:location_check",
        "offsetX": x,
        "offsetY": y,
        "offsetZ": z,
        "predicate": {
            "block": {
                "tag": "conduit_power:conduit_frame_block"
            }
        }
    }

    return base

def main() -> None:
    x_z_pattern = [(x,z) for x in range(-2,3) for z in range(-2,3) if x == 0 or z== 0]
    # print(x_z_pattern)
    coods_to_check = [(x,y,z) for y in (-2,2) for x,z in x_z_pattern] + [(x,y,0) for x in (-2,2) for y in range(-1,2)] + [(0,y,z) for z in (-2,2) for y in range(-1,2)]
    print(coods_to_check)
    # coods_to_check.remove((0,0,0))
    prismarine_check = all_of([make_term(offset) for offset in coods_to_check])
    with open('./data/conduit_power/predicates/check_primarine.json','w') as f:
        json.dump(prismarine_check,f,indent=2)

if __name__ == "__main__":
    main()
