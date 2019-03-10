## Introduction to ECL (Part 1)

ECL is a data-centric programming language for Big Data processing. I got introduced to this language in 2014 when I took a course on Big Data Fundamentals at Wayne State University. LexisNexis Risk Solutions offers an [Introduction to ECL for free](https://learn/lexisnexis.com).

### Tools
ECL IDE and ECL Watch
[HPCC Systems VM](http://hpccsystmes.com/download/hpcc-vm-image)
[Oracle's Virtual Box](https://www.virtualbox.com)

Spraying Data
ECL Language basics overview

Using ECL with your Big Data projects.

Data Challenge:

#### Lab Exercise 1: Repository Setup

#### Lab Exercise 2: File Spraying

- **Fixed-length** The record structure of the file you are spraying is a fixed-length value  
- **Delimited** Field information can be delimited by commas, tab, pipe characters etc. Implying variable length records.  
- XML  
- Variable  
- Blob  
- JSON  

### Basic ECL Syntax
A simple ECL Definition:
`Name := Expression;` Name is defined as Expression. Expressions can be single value calculation, boolean condition, a set of values or a set of records.

ECL is a declarative language which implies we define what is done but not how to do it. Don't think of ECL as how to do something but what data do we need.

ECL is not case-sensitive. ECL uses object.property syntax to qualify scope and disambiguate referencews within tables.
FolderName.Definition references a definition in another module
Dataset.Field references a field in a dataset or recordset.

### Basic Definition Types 

1. Boolean - A Boolean definition is a logical expression resulting in a TRUE/FALSE result:
IsGoodClass := TRUE;
IsNigerian := People.Country = 'NG'
IsSeniorCitizen := People.Age >= 65

2. Value - A value definition is an arithmethic or string expression with a single-valued result:
ValueTrue := 1;
NigerianCount := COUNT(People(IsNigerian));
SeniorAvgAge := AVE(People(IsSeniorCitizen), People.Age;

3. Set - It declares an expression as s set of values defined within square brackets:
SetTrueFalseValues := [0, 1];
SetSoutheastStates := ['FL','GA','AL','SC'];
SetStatusCodes := ['1','X','9'];
SetInts := [1,2+3,7*3];

4. Recordset - A Recordset definition is a filtered dataset or recordset.
NigerianPeople := People(IsNigerian);
SeniorNigerianPeople := NigerianPeople(IsSeniorCitizen);


### Actions and Definitions
Actions intigate workunits, definition don't.

Num25 := 25;
AddFive(INTEGER x=10) := x + 5;

NumResult1 := AddFive(Num25); //Actions can be definitions.
NumResult2 := AddFive();

NumResult1; //Will instigate a WU.
NumResult2;

#### Lab Exercise 2: Defining Your Data (Persons)
- Open Persons.ecl
- Create Record and Dataset  
- Syntax checking 
- Running a test query  
- Output a recordset  
- Loking at raw data

### Output and Aggregate Functions