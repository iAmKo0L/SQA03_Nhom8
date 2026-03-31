@echo off
setlocal EnableDelayedExpansion

echo ============================================
echo  Refresh WSL -> Windows portproxy for :8080
echo ============================================
echo.

REM 1) Ensure WSL is reachable
wsl -e sh -lc "echo WSL_OK" >nul 2>&1
if errorlevel 1 (
  echo [ERROR] WSL is not available. Start WSL first, then run again.
  exit /b 1
)

REM 2) Get first IPv4 from `hostname -I`
for /f "tokens=1" %%i in ('wsl -e sh -lc "hostname -I"') do set WSL_IP=%%i

if "%WSL_IP%"=="" (
  echo [ERROR] Cannot detect WSL IP.
  exit /b 1
)

echo [INFO] Detected WSL IP: %WSL_IP%

REM 3) Replace old portproxy rule for 8080
netsh interface portproxy delete v4tov4 listenaddress=0.0.0.0 listenport=8080 >nul 2>&1
netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=8080 connectaddress=%WSL_IP% connectport=8080
if errorlevel 1 (
  echo [ERROR] Failed to add portproxy rule. Run this file as Administrator.
  exit /b 1
)

REM 4) Ensure firewall allows inbound 8080 (private profile)
netsh advfirewall firewall delete rule name="WSL BE 8080" >nul 2>&1
netsh advfirewall firewall add rule name="WSL BE 8080" dir=in action=allow protocol=TCP localport=8080 profile=private >nul 2>&1

echo.
echo [OK] Portproxy updated successfully.
echo.
echo Current portproxy rules:
netsh interface portproxy show all
echo.
echo Test commands:
echo   curl http://localhost:8080/api/prescriptions/single-drug/status/1
echo   curl http://192.168.0.104:8080/api/prescriptions/single-drug/status/1
echo.
echo Done.
endlocal
