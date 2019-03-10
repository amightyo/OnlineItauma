// Lab Exercise 6
IMPORT $;

IsFloridian := $.Persons.state = 'FL';
//$.Persons(IsFloridian);

IsMale := $.Persons.gender = 'M';

IsBorn80 := $.Persons.birthdate[..4] > '1979' AND $.Persons.birthdate <> ''; 
//$.Persons(IsBorn80);

//YoungFloridaMale := $.Persons(IsFloridian, IsMale, IsBorn80);
//YoungFloridaMale;
EXPORT IsYoungFloridaMale := IsFloridian AND IsMale AND IsBorn80;