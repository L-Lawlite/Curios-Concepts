# Template for datapack Made by L.Lawliet

---

`.gitkeep` file doesn't have any meaning its just there to keep the empty folders there in git. Feel free to remove it.


# To test for fully powered conduit use the following command

`execute positioned <x> <y> <z> if predicate conduit_power:check_full_conduit`

you can use `~` if you are already in position of the conduit

For example if you have a marker on the conduit use

`execute at @e[type=marker,tag=<your_tag>] if predicate conduit_power:check_full_conduit`