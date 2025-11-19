% --- Facts: Animal categories ---
animal(dog).
animal(cat).
animal(elephant).
animal(eagle).
animal(shark).
animal(dolphin).
animal(crocodile).
animal(penguin).
animal(salmon).
animal(turtle).

% --- Facts: Land and water animals ---
land_animal(dog).
land_animal(cat).
land_animal(elephant).
land_animal(penguin).  % penguins live on land but swim
water_animal(shark).
water_animal(dolphin).
water_animal(salmon).
water_animal(crocodile).
water_animal(turtle).

% --- Facts: Traits ---
mammal(dog).
mammal(cat).
mammal(elephant).
mammal(dolphin).
bird(eagle).
bird(penguin).
fish(shark).
fish(salmon).
reptile(crocodile).
reptile(turtle).

has_fur(dog).
has_fur(cat).
lays_eggs(eagle).
lays_eggs(penguin).
lays_eggs(shark).
lays_eggs(salmon).
lays_eggs(crocodile).
lays_eggs(turtle).

% --- Rule: warm-blooded animals are mammals or birds ---
warm_blooded(X) :- mammal(X).
warm_blooded(X) :- bird(X).

% --- Rule: can_swim if animal is water_animal or penguin ---
can_swim(X) :- water_animal(X).
can_swim(penguin).
