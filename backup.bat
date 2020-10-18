@echo off
call config.bat

echo.
echo Please check if the following configuration is correct:
echo.
echo Rsync binary path:  %rsync_bin_path%
echo Destination folder: %dst_drive%:/%dst_folder%
echo.
echo Folders to copy:
echo.

set "x=0"
:checkloop
if defined paths[%x%].src (

	call echo %src_drive%:/%%paths[%x%].src%% 
	call echo to      %dst_drive%:/%dst_folder%/%%paths[%x%].dst%%
    call echo.

    set /a "x+=1"

    goto :checkloop
)

:choice
set /P c="Is this correct [y/n]?"
if /I "%c%" EQU "y" goto :somewhere
if /I "%c%" EQU "n" goto :somewhere_else
goto :choice

:somewhere

	set "x=0"
	:symloop
	if defined paths[%x%].src (

		call set "dst_loc=%dst_drive%:/%dst_folder%/%%paths[%x%].dst%%"

		if not exist "%dst_loc%" (
			call mkdir "%dst_loc%"
		)

		call set "src_arg=/cygdrive/%src_drive%/%%paths[%x%].src%%"
		call set "dst_arg=/cygdrive/%dst_drive%/%dst_folder%/%%paths[%x%].dst%%"

	    call "%rsync_bin_path%" -avh "%src_arg%" "%dst_arg%"

	    set /a "x+=1"

	    goto :symloop
	)

:somewhere_else

pause
