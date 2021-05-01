@echo off
echo -
echo https://www.youtube.com/c/koytz - Inscreva-se no meu canal \o
echo -
pause
@echo off
color 0a
:loop
@echo (%time%) Seu servidor Reiniciou!
@echo Pressione Enter nesta janela para reiniciar o servidor imediatamente, mantenha esta janela aberta para reinicializacoes automaticas do servidor de 4 em 4 horas.
start "Server"  ..\run.cmd +exec server.cfg
timeout /t 14400
taskkill /f /im FXServer.exe
@echo Encerramento do servidor com sucesso.
timeout /t 2 >nul
taskkill /F /FI "WindowTitle eq Server"
@echo Servidor esta reiniciando agora.
timeout /t 10
cls
goto loop
exit