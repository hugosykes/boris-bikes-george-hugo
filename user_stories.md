#Example

| Object  | Messages |
|---      |---       |
| User    |  
| Customer| find_by_surname |




## 1.

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

nouns: person,bike, docking station

verbs: use, release


| Object  | Messages |
|---      |---       |
| Person  |          |
| Docking_station | Release |


person --> working?  true?false
docking_station -->  Bike(release)

## 2.
As a person,
So that I can use a good bike,
I'd like to see if a bike is working


nouns:person, good bike

verbs: use, like/want, see, working


| Object  | Messages |
|---      |---       |
| Person  |          |
| Bike    | working?      |
| Docking_station | Release |


person --> working?
docking_station <--> check_Bike --> Bike (release)



## Combined:

Bike <-- working? --> true/false
DockingStation <-- release_bike --> a Bike
