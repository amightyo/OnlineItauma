//EXPORT BWR_BasicPersonsFilters := 'todo';
IMPORT $;
// Filter and count all persons who live in the state of Florida
IsFloridian := $.Persons.State = 'FL';
LiveInFlorida := $.Persons(IsFloridian);
COUNT(LiveInFlorida);

// Filter and count all persons who live in the state of Florida and the city of Miami
IsMiami := $.Persons.city = 'MIAMI';
COUNT($.Persons(IsFloridian AND IsMiami));
//LiveInFlorida;

// Filter and count all persons who live in the zip code of 33102
IsZipCode33102 := $.Persons.zipcode = '33102';
COUNT($.Persons(IsZipCode33102));

// Filter and count all persons whose First Name begins with the letter 'B'
COUNT($.Persons(FirstName[1] = 'B'));

// Filter and count all persons whose file date year is after 2000
//$.Persons(FileDate[..4] > '2000');
COUNT($.Persons(FileDate[..4] > '2000'));