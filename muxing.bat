@echo off
set mkvmerge="D:\MKVToolNix\mkvmerge.exe"

if not exist "mkvmerge_out" (mkdir "mkvmerge_out")

for %%x in (*.mkv) do %mkvmerge% -o "mkvmerge_out/%%x" -a 1 "%%x" --sync 0:-111500 "%%~nx.mka"

echo ============================
echo Done. Press any key to exit.
pause>nul
exit