from utility._typing import JsonContent

def any_of(predicate_list:list[JsonContent]) -> JsonContent:
    return {
            "condition": "minecraft:any_of",
            "terms": predicate_list
        }

def all_of(predicate_list:list[JsonContent]) -> JsonContent:
    return {
        "condition": "minecraft:all_of",
        "terms": predicate_list
    }