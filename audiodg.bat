@echo off
setlocal enabledelayedexpansion

REM Affiche l'ASCII art avec des couleurs
powershell -Command "Write-Host '    ___             ___           __     ' -ForegroundColor Cyan"
powershell -Command "Write-Host '   /   | __  ______/ (_)___  ____/ /___ _' -ForegroundColor Cyan"
powershell -Command "Write-Host '  / /| |/ / / / __  / / __ \/ __  / __ `/ ' -ForegroundColor Cyan"
powershell -Command "Write-Host ' / ___ / /_/ / /_/ / / /_/ / /_/ / /_/ /  ' -ForegroundColor Cyan"
powershell -Command "Write-Host '/_/  |_\__,_/\__,_/_/\____/\__,_/\__, /   ' -ForegroundColor Cyan"
powershell -Command "Write-Host '                                /____/    ' -ForegroundColor Cyan"

REM Vérifie si audiodg.exe est en cours d'exécution et récupère son PID
for /f "tokens=2 delims=," %%a in ('tasklist /fi "imagename eq audiodg.exe" /fo csv /nh') do (
    set "pid=%%~a"
)

if "%pid%"=="" (
    echo audiodg.exe n'est pas en cours d'exécution.
    exit /b 1
)

REM Demande à l'utilisateur de choisir l'UC à utiliser
set /p uc="Entrez le numéro de l'UC à utiliser (0 pour CPU 0, 1 pour CPU 1, etc.): "

REM Calcul du masque d'affinité en désactivant toutes les UC sauf celle choisie
set /a "mask=1<<%uc%"

REM Utilise PowerShell pour définir l'affinité du processus
powershell -Command "$process = Get-Process -Id %pid%; $process.ProcessorAffinity = %mask%"

echo Affinité du processeur définie pour audiodg.exe (PID: %pid%) sur l'UC %uc%.

endlocal
pause
