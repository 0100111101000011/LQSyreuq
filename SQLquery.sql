SELECT
[tableFirst].[tableOneColumnNameOne]as 'Alias this column',
[tableFirst].[tableOneColumnNameTwo] as 'Alias this column',
[tableSecond].[tableSecondColumnNameOne],
[tableThird].[tableThirdColunNameTypeDate],
[tableFourth].[tableFourthUserID],
[tableFourth].[tableFourthColumnNameTypeDateEndOfTransaction],
[tableFifth].[tableFifthID],
[tableFifth].[tableFifthColumnNameTypeDateCustomerSignature],
[tableFifth].[tableFifthColumnNameTypeDateSecond],
DATEDIFF(DD,[tableFourth].[tableFourthColumnNameTypeDateEndOfTransaction],[tableFifthColumnNameTypeDateCustomerSignature]) as 'Alias this column'
FROM 
[tableFirst],
[tableSecond],
[tableThird],
[tableFourth],
[tableFifth],
[tableSixth],
[tableSeventh],
[tableEighth]
WHERE
[tableFifth].[tableFifthColumnNameTypeDateSecond] >'2022-01-01' AND 
[tableFirst].[tableFirstUserDepartment]='0'and 
 DATEDIFF(DD,[tableFourth].[tableFourthColumnNameTypeDateEndOfTransaction],[tableFifthColumnNameTypeDateCustomerSignature])>50 AND 
[tableFifth].[tableFifthReportIntervention]= cast([tableFourth].[tableFourthInterventionID] as varchar(100))AND   
[tableFourth].[tableFourthInterventionRegistration] = cast([tableThird].[tableThirdRegistrationID] as varchar(100)) AND 
[tableThird].[tableThirdRegistrationMachine]= cast([tableSixth].[tableSixthMachineID] as varchar(10))  AND
[tableSixth].[MaszynatableSeventh] = [tableSeventh].[tableSeventhID] AND 
[tableSeventh].[tableSeventhUser]=[tableEighth].[tableEighthCompanyID]  AND 
[tableFourth].[tableFourthUserID] = cast([tableFirst].[tableFirstUserID] as varchar(100)) AND 
[tableEighth].[tableEighthCompanyRegion] =[tableSecond].[tableSecondRegionID] 
order by DATEDIFF(DD,[tableFourth].[tableFourthColumnNameTypeDateEndOfTransaction],[tableFifthColumnNameTypeDateCustomerSignature])



