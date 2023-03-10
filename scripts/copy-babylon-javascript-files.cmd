@echo off

set "OFFICE_DIR=C:\Program Files\Microsoft Office\root\Office16"
set "SCRIPTS_DIR=%OFFICE_DIR%%\Scripts"

echo OFFICE_DIR=%OFFICE_DIR%
echo SCRIPTS_DIR=%SCRIPTS_DIR%

if not exist "%SCRIPTS_DIR%\" (
    @REM This doesn't work for some reason. Go in manually and grant Users full control if creating the Scripts directory fails with "Access denied".
    @REM echo "Granting Everyone full control of %OFFICE_DIR%"
    @REM icacls "%OFFICE_DIR%" /GRANT Everyone:F
    echo "Creating %SCRIPTS_DIR% directory"
    mkdir "%SCRIPTS_DIR%"
)

echo "Granting Everyone full control of %SCRIPTS_DIR%"
icacls "%SCRIPTS_DIR%" /GRANT Everyone:F

echo "Deleting existing Babylon JavaScript files from %SCRIPTS_DIR%"
if exist "%SCRIPTS_DIR%\babylon.max.js" (
    del "%SCRIPTS_DIR%\babylon.max.js"
)
if exist "%SCRIPTS_DIR%\babylonjs.loaders.js" (
    del "%SCRIPTS_DIR%\babylonjs.loaders.js"
)
if exist "%SCRIPTS_DIR%\experience.js" (
    del "%SCRIPTS_DIR%\experience.js"
)

echo "Copying Babylon JavaScript files to %SCRIPTS_DIR%"
copy "C:\Users\afillebrown\-\code\BabylonNative\Apps\node_modules\babylonjs\babylon.max.js" "%SCRIPTS_DIR%\babylon.max.js" >nul
copy "C:\Users\afillebrown\-\code\BabylonNative\Apps\node_modules\babylonjs-loaders\babylonjs.loaders.js" "%SCRIPTS_DIR%\babylonjs.loaders.js" >nul
copy "C:\office\src\graphics\spectre\Scripts\experience.js" "%SCRIPTS_DIR%\experience.js" >nul
