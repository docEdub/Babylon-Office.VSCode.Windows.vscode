@echo off

set "SCRIPTS_DIR=C:\Program Files\Microsoft Office\root\Office16\Scripts"

if not exist "%SCRIPTS_DIR%\" (
    mkdir "%SCRIPTS_DIR%"
)
if exist "%SCRIPTS_DIR%\babylon.max.js" (
    del "%SCRIPTS_DIR%\babylon.max.js"
)
if exist "%SCRIPTS_DIR%\babylonjs.loaders.js" (
    del "%SCRIPTS_DIR%\babylonjs.loaders.js"
)
if exist "%SCRIPTS_DIR%\experience.js" (
    del "%SCRIPTS_DIR%\experience.js"
)
copy "C:\Users\afillebrown\-\code\BabylonNative\Apps\node_modules\babylonjs\babylon.max.js" "%SCRIPTS_DIR%\babylon.max.js" >nul
copy "C:\Users\afillebrown\-\code\BabylonNative\Apps\node_modules\babylonjs-loaders\babylonjs.loaders.js" "%SCRIPTS_DIR%\babylonjs.loaders.js" >nul
copy "C:\office\src\graphics\spectre\Scripts\experience.js" "%SCRIPTS_DIR%\experience.js" >nul
