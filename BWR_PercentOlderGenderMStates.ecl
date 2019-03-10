//Lab Exercise 9: Value Definitions

/* Create value definitions to determine the ratio of men born before 1980 and 
living in states beginning with 'M' to all men born before 1980 in all states. 
Do the same thing for females using the same criteria. */

IMPORT $;
//IsMale := $.Persons.gender = 'M';
IsBorn80 := $.Persons.birthdate[..4] < '1980' AND $.Persons.birthdate <> ''; 
//IsStateBeginningM := $.Persons.state in $.SetMStates;

//(COUNT($.MeninMStatesPersons(IsBorn80))/COUNT($.Persons(IsBorn80 AND gender = 'M')))*100;

//$.Persons(state in $.SetMStates);

//Percentage to two decimal places
// counts * 100 and cast to DECIMAL(5_2)
x1 := COUNT($.MeninMStatesPersons(IsBorn80));
x2 := COUNT($.Persons(IsBorn80 AND gender = 'M'));

PercOlderMalesinMStates := (DECIMAL5_2) (x1/x2 *100);

OUTPUT(PercOlderMalesinMStates,NAMED('Men_Percentage'));



//Female
//IsFemale := $.Persons.gender = 'F';
//IsBorn80 := $.Persons.birthdate[..4] < '1980' AND $.Persons.birthdate <> ''; 
//IsStateBeginningM := $.Persons.state in $.SetMStates;
FemaleinMStatesPersons := $.Persons(state IN $.SetMStates AND gender = 'F');



//$.Persons(state in $.SetMStates);

//Percentage to two decimal places
// counts * 100 and cast to DECIMAL(5_2)

DECIMAL5_2 PercOlderFemalesinMStates := (COUNT(FemaleinMStatesPersons(IsBorn80))/COUNT($.Persons(IsBorn80 AND gender = 'F')))*100;

OUTPUT(PercOlderFemalesinMStates,NAMED('Female_Percentage'));

//EXPORT BWR_PercentOlderGenderMStates := 'todo';