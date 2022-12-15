@echo off
if not exist "C:\office\Install\x64\debug\devclient\FILES\PFILES\MSOFFICE\Office16\Scripts\" (
    mkdir -p "C:\office\Install\x64\debug\devclient\FILES\PFILES\MSOFFICE\Office16\Scripts"
)
if exist "C:\office\Install\x64\debug\devclient\FILES\PFILES\MSOFFICE\Office16\Scripts\babylon.max.js" (
    del "C:\office\Install\x64\debug\devclient\FILES\PFILES\MSOFFICE\Office16\Scripts\babylon.max.js"
)
if exist "C:\office\Install\x64\debug\devclient\FILES\PFILES\MSOFFICE\Office16\Scripts\babylonjs.loaders.js" (
    del "C:\office\Install\x64\debug\devclient\FILES\PFILES\MSOFFICE\Office16\Scripts\babylonjs.loaders.js"
)
if exist "C:\office\Install\x64\debug\devclient\FILES\PFILES\MSOFFICE\Office16\Scripts\experience.js" (
    del "C:\office\Install\x64\debug\devclient\FILES\PFILES\MSOFFICE\Office16\Scripts\experience.js"
)
copy "C:\Users\afillebrown\-\code\BabylonNative\Apps\node_modules\babylonjs\babylon.max.js" "C:\office\Install\x64\debug\devclient\FILES\PFILES\MSOFFICE\Office16\Scripts\babylon.max.js" >nul
copy "C:\Users\afillebrown\-\code\BabylonNative\Apps\node_modules\babylonjs-loaders\babylonjs.loaders.js" "C:\office\Install\x64\debug\devclient\FILES\PFILES\MSOFFICE\Office16\Scripts\babylonjs.loaders.js" >nul
copy "C:\office\src\graphics\spectre\Scripts\experience.js" "C:\office\Install\x64\debug\devclient\FILES\PFILES\MSOFFICE\Office16\Scripts\experience.js" >nul
