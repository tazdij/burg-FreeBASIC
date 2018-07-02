

#include once "sqlite3.bi"

const DB_FILE = "sql3_proj.db"


declare sub app_parse_args()
declare sub app_def_arg(opt as string, idx as integer)
declare sub app_def_arg(opt as string, defaultVal as string)

declare sub app_def_opt(opt as string, desc as string)


declare sub burg_init_project(project as string)
declare sub burg_init_models()

dim projectPath as string


''
''	Main Section
''

' Check for CLI Arguments
Print "Hello World"

dim argName as string
dim argVal as string


for i as integer = 1 to __FB_ARGC__ - 1
	Print("Arg: " & i & ": " & Command(i))
	
	if Instr(Command(i), "=") = 0 then
		' This is a positional Argument or an Option
		
		if Left(Command(i), 1) = "-" then
			Print(Command(i) & " Is an Option Flag.")
		else
			' Just a positional Argument
			Print("Positional Argument")
		end if
		
	else
	    ' Named Arguments
		argName = Left(Command(i), Instr(Command(i), "=") - 1)
		argVal = Right(Command(i), Instr(Command(i), "=") + 1)
		Print("  Name: " & argName)
		Print("  Value: " & argVal)
	
	end if
	
	
	
	
	
next


''
'' END Main Section
''

sub burginit_project(project as string)
    ' Scan project folder?
    ' read project config file.
    
end sub

sub burg_init_models()
    
end sub

