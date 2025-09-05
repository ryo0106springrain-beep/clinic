@echo off
echo Starting local server for iPad access...
echo.
echo Your PC IP address:
ipconfig | findstr "IPv4"
echo.
echo Access URLs for iPad:
echo http://[YOUR_IP]:8000/beauty-clinic-multiuser.html
echo http://[YOUR_IP]:8000/beauty-clinic-enhanced.html
echo.
echo Press Ctrl+C to stop server
python -m http.server 8000