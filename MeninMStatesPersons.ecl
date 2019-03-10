// Lab Exercise 8
IMPORT $;

EXPORT MeninMStatesPersons := $.Persons(state IN $.SetMStates AND gender = 'M');

// MeninMStatesPersons := $.Persons(state IN $.SetMStates AND gender = 'M');
// COUNT(MeninMStatesPersons);