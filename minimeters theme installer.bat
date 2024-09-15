@echo off
Title Minimeters Theme Installer [github mirbyte]
echo.
echo Is Minimeters installed on default C: drive location? (Y/N)
echo.
echo.
choice /c YN /n /m "Press Y for Yes, N for No:"
if errorlevel 2 (
	echo You chose No. Running the script was aborted.
	echo.
	echo -----------------------------------------------
	pause
	exit
) else (
    for /r "%CD%" %%x in (*.txt) do copy "%%x" "C:\Users\%username%\AppData\Roaming\MiniMeters\themes"
	if errorlevel 1 (
		echo Error occurred while copying files.
		echo.
		echo -----------------------------------------------
	) else (
		echo.
		echo -----------------------------------------------
	)
)
pause
