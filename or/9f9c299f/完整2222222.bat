@echo off
:: 384--:���ٴ���վ

Goto �򿪶������

Goto Start2

:: m1
:Start
Title ���һ  ���𱸷�
:: ��ɫ Color 2f
Color 3f 
MODE con: Cols=40 Lines=35
Set tle=�������ݲ��𷢲�
Set var=0
::Set ���Ĵ���=Start

:Menu
Set ���Ĵ���=Start
cls
echo ����:�� %tle% ��
echo ---------------------------------------
echo �˵�:
echo       ��  ����feichang99  ��
echo.
echo       ��  ����f_posts
echo.
echo       ��  ����awzanl        ��
echo.
echo       ��  ����Chrome��ǩ
echo.
echo       ��  ��������F
echo.
echo       ��  ������
echo.
echo       ��  ����4000  ��
echo.
echo       ��  ����5000  ��
echo.
echo       ��  �½����� 
echo.
echo       ��  �����ڴ�
echo.
echo       ��  ���������ڴ�����
echo.
echo       ��  ����1��������������
echo.
echo       ��  ��ջ���վ��Temp
echo.
echo       ��  �˳�     15
echo.
echo ---------------------------------------
if %var% neq 0 echo (������Ч����������)
Set choice=
Set /p choice=ѡ��:
Set "choice=%choice:"=%"
if "%choice:~-1%"=="=" Goto Menu
if "%choice%"=="" Goto Menu
if /i "%choice%" == "1" cls&Goto ����feichang99
if /i "%choice%" == "2" cls&Goto ����f_posts
if /i "%choice%" == "3" cls&Goto ����awzanl
if /i "%choice%" == "4" cls&Goto ����Chrome��ǩ
if /i "%choice%" == "5" cls&Goto ��������F
if /i "%choice%" == "6" cls&Goto ���ٴ������
if /i "%choice%" == "*" cls&Goto Start2
if /i "%choice%" == "7" cls&Goto ����4000
if /i "%choice%" == "8" cls&Goto ����5000
if /i "%choice%" == "9" cls&Goto �½�����
if /i "%choice%" == "10" cls&Set �ص����Ĵ���=Start&Goto �����ڴ�   
if /i "%choice%" == "11" cls&Goto ���������ڴ�����
if /i "%choice%" == "12" cls&Goto ����1��������������
if /i "%choice%" == "13" cls&Goto ��ջ���վ��Temp
if /i "%choice%" == "15" cls&Goto ����Ŀ¼
if /i "%choice%" == "18" cls&Goto ��˫
if /i "%choice%" == "r" cls&Goto RestTeredo
if /i "%choice%" == "q" Popd&Exit
if /i "%choice%" == "001" cls&Goto %���Ĵ���1%
Set var=1
Goto Menu

:��˫
Set /p ˫��=�����밵��:
start /max "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"  --enable-features=WebUIDarkMode --force-dark-mode  "https://www.laokgg.tk/ctor/%˫��%.html"
Set ˫��=
Goto End

:��ջ���վ��Temp
@rd /s /q %windir%\temp
@rd /s /q C:\Users\3\AppData\Local\Temp
@rd /s /q C:\$RECYCLE.BIN
@rd /s /q d:\$RECYCLE.BIN
@rd /s /q e:\$RECYCLE.BIN
@rd /s /q f:\$RECYCLE.BIN
@rd /s /q g:\$RECYCLE.BIN
Goto End

:����feichang99
MODE con: Cols=88 Lines=32
::Title ��ʼ���ڲ���99�����Ժ󡣡���
g:
CD g:\f
::Title �����������֮ǰ���ɵĶ��������Ժ󡣡���
echo.
echo ��ʼ���֮ǰ����
echo.
call hexo clean
::Title �������ɾ�̬���£����Ժ󡣡���
cls
echo.
echo ��ʼ���ɾ�̬���£����Ժ󡣡���
echo.
call hexo g
::Title ���ڲ������£����Ժ󡣡���
cls
echo.
echo ��ʼ�������£����Ժ󡣡���
echo.
call hexo d
pause
::Title CMD
echo ----------����feichang99:>>E:\����\���\����df��¼.txt  %date% %time%>>E:\����\���\����df��¼.txt
echo. >>E:\����\���\����df��¼.txt
Goto End

:����f_posts
echo ���ڱ���99�����Ժ󡣡���
MODE con: Cols=88 Lines=32
echo  D | xcopy "G:\f\source\_posts" "J:\f\source\_posts" /e /y /h /k /J /v
echo -----����f_posts:>>E:\����\���\����df��¼.txt  %date% %time%>>E:\����\���\����df��¼.txt
echo. >>E:\����\���\����df��¼.txt
pause
Goto End

:����awzanl
���ڲ���awz�����Ժ󡣡���
MODE con: Cols=88 Lines=32
f:
CD f:\d
echo.
echo ��ʼ���֮ǰ����
echo.
call hexo clean
cls
echo.
echo ��ʼ���ɾ�̬���£����Ժ󡣡���
echo.
call hexo g
cls
echo.
echo ��ʼ�������£����Ժ󡣡���
echo.
call hexo d
pause
echo **********����awzanl:>>E:\����\���\����df��¼.txt  %date% %time%>>E:\����\���\����df��¼.txt
echo. >>E:\����\���\����df��¼.txt
Goto End

:����4000
MODE con: Cols=40 Lines=32
echo ���ڲ���4000�����Ժ󡣡���
start /min "" "E:\����\hexo���\����localhost4000.bat"
ping 127.1 -n 3 >nul
start chrome.exe  "http://localhost:4000"
Goto End

:����5000
MODE con: Cols=40 Lines=32
echo ���ڲ���5000�����Ժ󡣡���
start /min "" "E:\����\hexo���\����localhost5000.bat"
ping 127.1 -n 9 >nul
start chrome.exe  "http://localhost:5000"
Goto End


:����Chrome��ǩ
echo ���ڱ���awz�����Ժ󡣡���
MODE con: Cols=88 Lines=32
xcopy "C:\Users\3\AppData\Local\Google\Chrome\User Data\Default\Bookmarks"  "G:\f\source\_posts\bat����\bat\"  /Y
xcopy "C:\Users\3\AppData\Local\Google\Chrome\User Data\Default\Favicons"  "G:\f\source\_posts\bat����\bat\"  /Y
xcopy "E:\zhuomian\����2222222.bat"  "G:\f\source\_posts\bat����\bat\"  /Y
echo *****����Chrome��ǩ:>>E:\����\���\����df��¼.txt  %date% %time%>>E:\����\���\����df��¼.txt
echo. >>E:\����\���\����df��¼.txt
pause
Goto End

:��������F
echo ���ڱ���99�����Ժ󡣡���
MODE con: Cols=88 Lines=32
echo  D | xcopy "G:\f\" "J:\f" /e /y /h /k /J /v
echo ��������F:>>E:\����\���\����df��¼.txt  %date% %time%>>E:\����\���\����df��¼.txt
echo. >>E:\����\���\����df��¼.txt
pause
Goto End

:: ��� m3 *********************************************************************
:����Ŀ¼
Color f0
MODE con: Cols=40 Lines=35
Set tle5=������ѡ��
Set var5=0
::Set ���Ĵ���=����Ŀ¼

:�������
::Set ���Ĵ���1=%���Ĵ���%
Set ���Ĵ���=����Ŀ¼
Set ����1����=https://1.wv1.workers.dev/
Set ����2����=https://z.zha.workers.dev/
Set ����3����=https://zj.xiaojin.workers.dev/
Set ����4����=https://j.zjz.workers.dev/
Set ����5����=https://j.xj2.workers.dev/
Set ����6����=https://1.y029.workers.dev/
Set ����7����=https://1.kled.workers.dev/
Set ����8����=https://1.yd029.workers.dev/
Set ����9����=https://1.yd139.workers.dev/
cls
echo ����:�� %tle5% ��
echo ---------------------------------------
echo �˵�:
echo       1  �ŷ�����
echo.
echo       2  �ŷ�����
echo.
echo       3  �ŷ�����
echo.
echo       4  �ŷ�����
echo.
echo       5  �ŷ�����
echo.
echo       6  �ŷ�����
echo.
echo       7  �ŷ�����
echo.
echo       8  �ŷ�����
echo.
echo       9  �ŷ�����
echo.
echo       0  �ص����˵�       ��  �˳�
echo.
echo ---------------------------------------
if %var5% neq 0 echo (������Ч����������)
Set choice5=
Set /p choice5=ѡ��: 
Set "choice5=%choice5:"=%"
if "%choice5:~-1%"=="=" Goto �������
if "%choice5%"=="" Goto �������
if /i "%choice5%" == "1" cls&Set tle6=һ�ŷ�����&Set �������=%����1����%&Goto ������վ��Ŀ¼
if /i "%choice5%" == "2" cls&Set tle6=���ŷ�����&Set �������=%����2����%&Goto ������վ��Ŀ¼
if /i "%choice5%" == "3" cls&Set tle6=���ŷ�����&Set �������=%����3����%&Goto ������վ��Ŀ¼
if /i "%choice5%" == "4" cls&Set tle6=�ĺŷ�����&Set �������=%����4����%&Goto ������վ��Ŀ¼
if /i "%choice5%" == "5" cls&Set tle6=��ŷ�����&Set �������=%����5����%&Goto ������վ��Ŀ¼
if /i "%choice5%" == "6" cls&Set tle6=���ŷ�����&Set �������=%����6����%&Goto ������վ��Ŀ¼
if /i "%choice5%" == "7" cls&Set tle6=�ߺŷ�����&Set �������=%����7����%&Goto ������վ��Ŀ¼
if /i "%choice5%" == "8" cls&Set tle6=�˺ŷ�����&Set �������=%����8����%&Goto ������վ��Ŀ¼
if /i "%choice5%" == "9" cls&Set tle6=�źŷ�����&Set �������=%����9����%&Goto ������վ��Ŀ¼
if /i "%choice5%" == "0" cls&Goto �ص����˵�
if /i "%choice5%" == "**" cls&Goto Start2
if /i "%choice5%" == "001" cls&Goto %���Ĵ���1%
Set var5=1
Goto �������

:������վ��Ŀ¼
Color 5F
MODE con: Cols=40 Lines=35
Set var6=0
::Set ���Ĵ���=������վ��Ŀ¼

:������վĿ¼
::Set ���Ĵ���1=%���Ĵ���%
Set ���Ĵ���=������վ��Ŀ¼
Set �ȸ�=
Set �͹�=https://www.youtube.com/
Set ��ɭ�ƾ�=https://youtu.be/q8u9qK5niss
Set ��ɭ51=https://www.youtube.com/watch?v=RaIJ767Bj_M
Set ������51=https://www.youtube.com/channel/UCUj9oqtKhwSfM6YWD3qyMnQ
Set ��������=https://www.youtube.com/watch?v=wUPPkSANpyo
Set ������=https://www.youtube.com/results?search_query=������
Set ������=https://www.aboluowang.com/indext.html
Set �ⲻ������=https://www.youtube.com/results?search_query=�ⲻ������
cls
echo ����:�� %tle6% ��
echo ---------------------------------------
echo �˵�:
echo       1  �ȸ�����
echo.
echo       2  �͹���ҳ
echo.
echo       3  ��ɭ�ƾ�
echo.
echo       4  ��ɭ51
echo.
echo       5  51���ű�
echo.
echo       6  ��������
echo.
echo       7  ������
echo.
echo       8  ������������
echo.
echo       9  �ⲻ������
echo.
echo       10  �����  ������Ч
echo.
echo       11  �����  ������Ч  
echo.
echo       0 �ص��ϸ��˵�   00 �ص����˵�       
echo.
echo ---------------------------------------
if %var6% neq 0 echo (������Ч����������)
Set choice6=
Set /p choice6=ѡ��: 
Set "choice6=%choice6:"=%"
if "%choice6:~-1%"=="=" Goto ������վĿ¼
if "%choice6%"=="" Goto ������վĿ¼
if /i "%choice6%" == "1" cls&Goto ����վ2
if /i "%choice6%" == "2" cls&Set ��ַ����=%�͹�%&Goto ����վ
if /i "%choice6%" == "3" cls&Set ��ַ����=%��ɭ�ƾ�%&Goto ����վ
if /i "%choice6%" == "4" cls&Set ��ַ����=%��ɭ51%&Goto ����վ
if /i "%choice6%" == "5" cls&Set ��ַ����=%������51%&Goto ����վ
if /i "%choice6%" == "6" cls&Set ��ַ����=%��������%&Goto ����վ
if /i "%choice6%" == "7" cls&Set ��ַ����=%������%&Goto ����վ
if /i "%choice6%" == "8" cls&Set ��ַ����=%������%&Goto ����վ
if /i "%choice6%" == "9" cls&Set ��ַ����=%�ⲻ������%&Goto ����վ
if /i "%choice%6" == "99" cls&Goto �½�����
if /i "%choice6%" == "**" cls&Goto Start2
if /i "%choice6%" == "0" cls&Goto ����Ŀ¼
if /i "%choice6%" == "00" cls&Goto �ص����˵�
if /i "%choice6%" == "001" cls&Goto %���Ĵ���1%
Set var6=1
Goto ������վĿ¼

:����վ
start /max "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"  --enable-features=WebUIDarkMode --force-dark-mode  "%�������%-----%��ַ����%"
::start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe --enable-features=WebUIDarkMode --force-dark-mode"  %�������%-----%��ַ����%
::start chrome.exe %�������%-----%��ַ����%
Set ��ַ����=
Goto ������վĿ¼

:����վ2
start /max "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"  --enable-features=WebUIDarkMode --force-dark-mode  "%�������%"
Goto ������վĿ¼

:: ��� m2 ****************************************************************************
:Start2
Title ����  �������
:: ��ɫ Color 3f
Color 2f  
MODE con: Cols=42 Lines=42
Set tle2=�򿪳���ѡ��
Set var2=0
::Set ���Ĵ���=Start2

:Menu2
Set ���Ĵ���=Start2
Set ΢��=E:\Program Files\Tencent\WeChat\WeChat.exe
Set �ر�΢��=WeChat.exe
::------------------------------
Set ��ͷ��=E:\Program Files (x86)\DeskPins-chs 1.30\DeskPins.exe
Set �رմ�ͷ��=DeskPins.exe
::------------------------------
Set Ѷ������=E:\Program Files (x86)\iFly Info Tek\iFlyIME\2.1.1611\iFlyVoice.exe
Set �ر�Ѷ������=iFlyVoice.exe
::------------------------------
Set v2=E:\V2\v2rayN.exe
Set �ر�v2=v2rayN.exe
Set �ر�v3=wv2ray.exe
::-------------------------------ͬ��ر�����ͬ�����̵籨
Set �籨2=E:\DB\dianbao2\Telegram\Telegram.exe
Set �رյ籨2=Telegram.exe
::------------------------------ 
Set ������=E:\Program Files\DAUM\PotPlayer\PotPlayerMini64.exe
Set �رղ�����=PotPlayerMini64.exe
::------------------------------
Set ������¼=E:\����\���\����df��¼.txt
Set �رշ�����¼=notepad.exe
::------------------------------
Set ��ip=E:\Program Files\17monipdb\17monipdb.exe
Set �ر�17��ip=17monipdb.exe
::------------------------------
Set Ѹ��5=E:\Program Files\xunlei2\Ѹ��5.exe
Set �ر�Ѹ��=Thunder5.exe
::------------------------------
Set ��ѹ��=E:\WinRAR\WinRAR.exe
Set �رս�ѹ��=WinRAR.exe
::------------------------------
Set ssr=E:\fuq\ShadowsocksR4.6.1\ShadowsocksR-dotnet4.0.exe
Set �ر�ssr=ShadowsocksR-dotnet4.0.exe
::------------------------------
Set chrome="chrome.exe --enable-features=WebUIDarkMode --force-dark-mode"
Set �ر�chrome=chrome.exe
::------------------------------
Set IDM="C:\Program Files (x86)\Internet Download Manager\IDMan.exe"
Set �ر�IDM=IDMan.exe
::------------------------------
Set sha1="E:\Program Files (x86)\sha1\HashMyFiles.exe"
Set �ر�sha1=HashMyFiles.exe
::------------------------------
Set ����="%windir%\system32\osk.exe"
Set �رռ���=osk.exe
::------------------------------
Set ��ǩ��ǩ=F:\gi\BF\windows10\bat\���Ʊ�ǩ.bat
::------------------------------
Set BitComet=E:\Program Files\BitComet\BitComet\BitComet.exe
Set �ر�BitComet=BitComet.exe
::------------------------------
cls
echo.
echo ����:�� %tle2% ���� %tle6% ��
echo ------------------------------------------
echo.
echo �˵�:���رռ�0��
echo       00  ��ͷ�� ������� Chrome 
echo.
echo       1  ��΢��         16  sha1
echo.
echo       2  ��ͷ��           17  firefox
echo.
echo       3  Ѷ������         18  N
echo.
echo       4  ��v2           19  ��ʱ57
echo.
echo       5  �籨2            20  ��Ļ����
echo.
echo       6  PotPlayer        21  ��ǩ��ǩ
echo.
echo       7  ������¼         22  BitComet
echo.
echo       8  17��ip           23  ��ǩ
echo.
echo       9  ��Ѹ��         24  ������
echo.
echo       10  WinRAR          25 �����
echo.
echo       11  ssr             26 �����¼��  
echo.
echo       12  Chrome          012 �ر� 
echo.
echo       13  IDM             013 �ر�
echo.
echo       14  �����ڴ�        15 ������     
echo.
echo       0  �ص����˵�       ��  �˳�
echo.
echo ------------------------------------------
if %var2% neq 0 echo (������Ч����������)
Set choice2=
Set /p choice2=ѡ��: 
Set "choice2=%choice2:"=%"
if "%choice2:~-1%"=="=" Goto Menu2
if "%choice2%"=="" Goto Menu2
if /i "%choice2%" == "00" cls&Goto �򿪶������
if /i "%choice2%" == "000" cls&Goto 1�رմ򿪵����
if /i "%choice2%" == "1" cls&Set ����1=%΢��%&Goto 1�������С��
if /i "%choice2%" == "01" cls&Set ����2=%�ر�΢��%&Goto 1�ر����
if /i "%choice2%" == "2" cls&Set ����1=%��ͷ��%&Goto 1�������С��
if /i "%choice2%" == "02" cls&Set ����2=%�رմ�ͷ��%&Goto 1�ر����
if /i "%choice2%" == "3" cls&Set ����1=%Ѷ������%&Goto 1�������С��
if /i "%choice2%" == "03" cls&Set ����2=%�ر�Ѷ������%&Goto 1�ر����
if /i "%choice2%" == "4" cls&Set ����1=%v2%&Goto 1�������С��
if /i "%choice2%" == "04" cls&Set ����2=%�ر�v2%&Set ����4=%�ر�v3% &Goto 1�ر����
if /i "%choice2%" == "5" cls&Set ����3=%�籨2%&Goto 1���������
if /i "%choice2%" == "05" cls&Set ����2=%�رյ籨2%&Goto 1�ر����
if /i "%choice2%" == "6" cls&Set ����1=%������%&Goto 1�������С��
if /i "%choice2%" == "06" cls&Set ����2=%�رղ�����%&Goto 1�ر����
if /i "%choice2%" == "7" cls&Set ����1=%������¼%&Goto 1�������С��
if /i "%choice2%" == "07" cls&Set ����2=%�رշ�����¼%&Goto 1�ر����
if /i "%choice2%" == "8" cls&Set ����1=%��ip%&Goto 1�������С��
if /i "%choice2%" == "08" cls&Set ����2=%�ر�17��ip%&Goto 1�ر����
if /i "%choice2%" == "9" cls&Set ����1=%Ѹ��5%&Goto 1�������С��
if /i "%choice2%" == "09" cls&Set ����2=%�ر�Ѹ��%&Goto 1�ر����
if /i "%choice2%" == "10" cls&Set ����1=%��ѹ��%&Goto 1�������С��
if /i "%choice2%" == "010" cls&Set ����2=%�رս�ѹ��%&Goto 1�ر����
if /i "%choice2%" == "11" cls&Set ����1=%ssr%&Goto 1�������С��
if /i "%choice2%" == "011" cls&Set ����2=%�ر�ssr%&Goto 1�ر����
if /i "%choice2%" == "12" cls&Set ����5=%Chrome%&Goto 1��������
if /i "%choice2%" == "012" cls&Set ����2=%�ر�Chrome%&Goto 1�ر����
if /i "%choice2%" == "13" cls&Set ����1="%IDM%"&Goto 1�������С��
if /i "%choice2%" == "013" cls&Set ����2=%�ر�IDM%&Goto 1�ر����
if /i "%choice2%" == "16" cls&Set ����3="%sha1%"&Goto 1���������
if /i "%choice2%" == "016" cls&Set ����2=%�ر�sha1%&Goto 1�ر����
if /i "%choice2%" == "17" cls&start  "" "C:\Program Files (x86)\Mozilla Firefox\firefox.exe"&Goto Start2
if /i "%choice2%" == "017" cls&taskkill /im firefox.exe /f&Goto Start2
if /i "%choice2%" == "19" cls&schtasks /create /tn ��ʱ51 /tr  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe --enable-features=WebUIDarkMode --force-dark-mode https://www.youtube.com/watch?v=dphWo0r27Z4"  /sc once  /st 19:00:00 /f&Goto Start2
if /i "%choice2%" == "20" cls&Set ����3="%����%"&Goto 1���������
if /i "%choice2%" == "020" cls&Set ����2=%�رռ���%&Goto 1�ر����
if /i "%choice2%" == "21" cls&Set ����1="%��ǩ��ǩ%"&Goto 1�������С��
if /i "%choice2%" == "22" cls&Set ����3=%BitComet%&Goto 1���������
if /i "%choice2%" == "022" cls&Set ����2=%�ر�BitComet%&Goto 1�ر����
if /i "%choice2%" == "23" cls&start /max "" "E:\����\��� - ��ݷ�ʽ.lnk"&Goto Menu2
if /i "%choice2%" == "24" cls&start /max "" "E:\����\������ - ��ݷ�ʽ.lnk"&Goto Menu2
if /i "%choice2%" == "25" cls&start /max "" "E:\����\Windows Sandbox - ��ݷ�ʽ.lnk"&Goto Menu2
if /i "%choice2%" == "26" cls&start /max "" "E:\����\�����¼�� - ��ݷ�ʽ.lnk"&Goto Menu2
::ɾ������schtasks /delete /tn ��ʱ51  /f
if /i "%choice2%" == "019" cls&schtasks /delete /tn ��ʱ51  /f&Goto Start2
if /i "%choice2%" == "0" cls&Goto �ص����˵�
if /i "%choice2%" == "14" cls&Set �ص����Ĵ���=Start2&Goto �����ڴ�
if /i "%choice2%" == "15" cls&Goto ���ٴ������
if /i "%choice2%" == "155" cls&Goto ���ٽ�����վĿ¼
if /i "%choice2%" == "18" cls&Goto ��˫
if /i "%choice2%" == "99" cls&Goto �½�����
if /i "%choice2%" == "150" cls&Goto ����Ŀ¼
if /i "%choice2%" == "**" cls&Goto ��������
if /i "%choice2%" == "***" cls&Goto ϵͳ���
if /i "%choice2%" == "001" cls&Goto %���Ĵ���1%
if /i "%choice2%" == "r" cls&Goto RestTeredo
if /i "%choice2%" == "q" Popd&Exit
::����Ϊ�����
if /i "%choice2%" == "*1" cls&Goto ����feichang99
if /i "%choice2%" == "*2" cls&Goto ����f_posts
if /i "%choice2%" == "*3" cls&Goto ����awzanl
if /i "%choice2%" == "*4" cls&Goto ����Chrome��ǩ
if /i "%choice2%" == "*5" cls&Goto ��������F
if /i "%choice2%" == "*7" cls&Goto ����4000
if /i "%choice2%" == "*8" cls&Goto ����5000
if /i "%choice2%" == "*11" cls&Goto ���������ڴ�����
if /i "%choice2%" == "*12" cls&Goto ����1��������������
if /i "%choice2%" == "*13" cls&Goto ��ջ���վ��Temp
if /i "%choice2%" == "*18" cls&Goto ��˫
Set var2=1
Goto Menu2



:1�������С��
start /min "" "%����1%"
Set ����1=
Goto Start2

:1���������
start  "" "%����3%"
Set ����3=
Goto Start2

:1��������
start  "" "%����5%"
Set ����5=
Goto Start2

:�򿪶������
MODE con: Cols=40 Lines=32
echo ���ڴ��У����Ժ󡣡���
start /min "" "C:\Windows\System32\Taskmgr.exe"
start /min "" "E:\Program Files (x86)\DeskPins-chs 1.30\DeskPins.exe"
start /max "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --enable-features=WebUIDarkMode --force-dark-mode
Goto Start2

:1�ر����
::taskkill /f /im %����2%
taskkill /im %����2% /f
taskkill /im %����4% /f
Set ����2=
Set ����4=
Goto Start2

:1�رմ򿪵����
::taskkill /f /im %����2%
@taskkill /im WeChat.exe /f
cls
@taskkill /im atom.exe /f
cls
@taskkill /im v2rayN.exe /f
cls
@taskkill /im wv2ray.exe /f
cls
@taskkill /im Telegram.exe /f
cls
@taskkill /im PotPlayerMini64.exe /f
cls
@taskkill /im notepad.exe /f
cls
@taskkill /im 17monipdb.exe /f
cls
@taskkill /im Thunder5.exe /f
@taskkill /im IDMan.exe /f
@taskkill /im IEMonitor.exe /f
@taskkill /im ShadowsocksR-dotnet4.0.exe /f
@taskkill /im ShadowsocksR-dotnet4.0.exe /f
::@taskkill /im explorer.exe /f
cls
@taskkill /im WinRAR.exe /f
@taskkill /im HashMyFiles.exe /f
::�򿪶������
@taskkill /im Taskmgr.exe /f
cls
@taskkill /im DeskPins.exe /f
cls
@taskkill /im chrome.exe /f
cls
@taskkill /im firefox.exe /f
Goto Start2

:���ٴ������
Title CMD
Color 2f
MODE con: Cols=40 Lines=35
Set tle5=�������������
Set var5=0

:���ٴ������1
Set ����1����=https://1.wv1.workers.dev/
Set ����2����=https://z.zha.workers.dev/
Set ����3����=https://zj.xiaojin.workers.dev/
Set ����4����=https://j.zjz.workers.dev/
Set ����5����=https://j.xj2.workers.dev/
Set ����6����=https://1.y029.workers.dev/
Set ����7����=https://1.kled.workers.dev/
Set ����8����=https://1.yd029.workers.dev/
Set ����9����=https://1.yd139.workers.dev/
cls
echo.
echo ����:�� %tle5% ��
echo ---------------------------------------
if %var5% neq 0 echo (������Ч����������)
Set choice5=
Set /p choice5=ѡ�������: 
Set "choice5=%choice5:"=%"
if "%choice5:~-1%"=="=" Goto ���ٴ������1
if "%choice5%"=="" Goto ���ٴ������1
if /i "%choice5%" == "1" cls&Set tle6=һ�ŷ�����&Set �������=%����1����%&Goto ���ٽ�����վĿ¼
if /i "%choice5%" == "2" cls&Set tle6=���ŷ�����&Set �������=%����2����%&Goto ���ٽ�����վĿ¼
if /i "%choice5%" == "3" cls&Set tle6=���ŷ�����&Set �������=%����3����%&Goto ���ٽ�����վĿ¼
if /i "%choice5%" == "4" cls&Set tle6=�ĺŷ�����&Set �������=%����4����%&Goto ���ٽ�����վĿ¼
if /i "%choice5%" == "5" cls&Set tle6=��ŷ�����&Set �������=%����5����%&Goto ���ٽ�����վĿ¼
if /i "%choice5%" == "6" cls&Set tle6=���ŷ�����&Set �������=%����6����%&Goto ���ٽ�����վĿ¼
if /i "%choice5%" == "7" cls&Set tle6=�ߺŷ�����&Set �������=%����7����%&Goto ���ٽ�����վĿ¼
if /i "%choice5%" == "8" cls&Set tle6=�˺ŷ�����&Set �������=%����8����%&Goto ���ٽ�����վĿ¼
if /i "%choice5%" == "9" cls&Set tle6=�źŷ�����&Set �������=%����9����%&Goto ���ٽ�����վĿ¼
if /i "%choice5%" == "0" cls&Goto �ص����˵�
if /i "%choice5%" == "001" cls&Goto %���Ĵ���1%
Set var5=1
Goto ���ٴ������1

:���ٽ�����վĿ¼
Title CMD
Color 2f
MODE con: Cols=40 Lines=35
Set var6=0

:���ٽ�����վĿ¼1
Set �ȸ�=
Set �͹�=https://www.youtube.com/
Set ��ɭ�ƾ�=https://youtu.be/q8u9qK5niss
Set ��ɭ51=https://www.youtube.com/watch?v=RaIJ767Bj_M
Set ������51=https://www.youtube.com/channel/UCUj9oqtKhwSfM6YWD3qyMnQ
Set ��������=https://www.youtube.com/watch?v=wUPPkSANpyo
Set ������=https://www.youtube.com/results?search_query=������
Set ������=https://www.aboluowang.com/indext.html
Set �ⲻ������=https://www.youtube.com/results?search_query=�ⲻ������
cls
echo.
echo ����:�� %tle6% ��
echo ---------------------------------------
if %var6% neq 0 echo (������Ч����������)
Set choice6=
Set /p choice6=ѡ����ַ: 
Set "choice6=%choice6:"=%"
if "%choice6:~-1%"=="=" Goto ���ٽ�����վĿ¼1
if "%choice6%"=="" Goto ���ٽ�����վĿ¼1
if /i "%choice6%" == "1" cls&Goto ���ٴ���վ2
if /i "%choice6%" == "2" cls&Set ��ַ����=%�͹�%&Goto ���ٴ���վ
if /i "%choice6%" == "3" cls&Set ��ַ����=%��ɭ�ƾ�%&Goto ���ٴ���վ
if /i "%choice6%" == "4" cls&Set ��ַ����=%��ɭ51%&Goto ���ٴ���վ
if /i "%choice6%" == "5" cls&Set ��ַ����=%������51%&Goto ���ٴ���վ
if /i "%choice6%" == "6" cls&Set ��ַ����=%��������%&Goto ���ٴ���վ
if /i "%choice6%" == "7" cls&Set ��ַ����=%������%&Goto ���ٴ���վ
if /i "%choice6%" == "8" cls&Set ��ַ����=%������%&Goto ���ٴ���վ
if /i "%choice6%" == "9" cls&Set ��ַ����=%�ⲻ������%&Goto ���ٴ���վ
if /i "%choice%6" == "99" cls&Goto �½�����
if /i "%choice6%" == "66" cls&Goto Start2
if /i "%choice6%" == "0" cls&Goto ����Ŀ¼
if /i "%choice6%" == "00" cls&Goto �ص����˵�
Set var6=1
Goto ���ٽ�����վĿ¼1

:���ٴ���վ
start /max "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"  --enable-features=WebUIDarkMode --force-dark-mode  "%�������%-----%��ַ����%"
::start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe --enable-features=WebUIDarkMode --force-dark-mode"  %�������%-----%��ַ����%
::start chrome.exe %�������%-----%��ַ����%
Set ��ַ����=
Set ȥ�Ĵ���=%���Ĵ���%
Set ���Ĵ���=
Goto %ȥ�Ĵ���%

:���ٴ���վ2
start /max "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"  --enable-features=WebUIDarkMode --force-dark-mode  "%�������%"
Set ȥ�Ĵ���=%���Ĵ���%
Set ���Ĵ���=
Goto %ȥ�Ĵ���%

:�ص����˵�
Goto Start



:: ��� m4 ***************************************************************************

:ϵͳ���
Title ϵͳ
Color 20
MODE con: Cols=42 Lines=42
Set tle=Ӧ��
Set var=0

:ϵͳӦ��Ŀ¼
Set ���Ĵ���=ϵͳ���
cls
echo ����:�� %tle% ��
echo ------------------------------------------
echo �˵�:
echo   ��  ���� services.msc  16 ��ǩ
echo.
echo   ��  ���������         17 ������
echo.
echo   ��  ����ǽ             18 �����
echo.
echo   ��  ���ذ�ȫ����       19 �����¼��
echo.
echo   ��  �����û�����
echo.
echo   ��  ��������Ա༭��
echo.
echo   ��  ���̹�����
echo.
echo   ��  �����ļ���
echo.
echo   ��  ���������
echo.
echo   ��  �豸������
echo.
echo   ��  ����ɱ��
echo.
echo   ��  ֹͣɱ��
echo.
echo   ��  ��ע���
echo.
echo   14  ɾ�����м�¼
echo.
echo   15  �򿪿������
echo.
echo   ��  �˳�     15
echo.
echo ------------------------------------------
if %var% neq 0 echo (������Ч����������)
Set choice=
Set /p choice=ѡ��:
Set "choice=%choice:"=%"
if "%choice:~-1%"=="=" Goto Menu
if "%choice%"=="" Goto Menu
if /i "%choice%" == "1" cls&start  "" "E:\����\services.msc - ��ݷ�ʽ.lnk"&Goto ϵͳ���
if /i "%choice%" == "2" cls&start  "" "E:\����\taskschd.msc - ��ݷ�ʽ.lnk"&Goto ϵͳ���
if /i "%choice%" == "3" cls&start  "" "E:\����\WF.msc - ��ݷ�ʽ.lnk"&Goto ϵͳ���
if /i "%choice%" == "4" cls&start  "" "E:\����\���ذ�ȫ����.lnk"&Goto ϵͳ���
if /i "%choice%" == "5" cls&start  "" "E:\����\�����û�����.lnk"&Goto ϵͳ���
if /i "%choice%" == "6" cls&start  "" "E:\����\��������Ա༭��.lnk"&Goto ϵͳ���
if /i "%choice%" == "7" cls&start  "" "E:\����\���̹�����.lnk"&Goto ϵͳ���
if /i "%choice%" == "8" cls&start  "" "E:\����\�����ļ���.lnk"&Goto ϵͳ���
if /i "%choice%" == "9" cls&start  "" "E:\����\���������.lnk"&Goto ϵͳ���
if /i "%choice%" == "10" cls&start  "" "E:\����\�豸������.lnk"&Goto ϵͳ���   
if /i "%choice%" == "11" cls&start  "" "E:\ɱ��\����ɱ��.bat - ��ݷ�ʽ.lnk"&Goto ϵͳ���
if /i "%choice%" == "12" cls&start  "" "E:\ɱ��\ֹͣɱ��.bat - ��ݷ�ʽ.lnk"&Goto ϵͳ���
if /i "%choice%" == "13" cls&start  "" "E:\ɱ��\ע���.bat - ��ݷ�ʽ.lnk"&Goto ϵͳ���
if /i "%choice%" == "14" cls&start  "" "E:\ɱ��\ɾ�����м�¼.bat - ��ݷ�ʽ"&Goto ϵͳ���  
if /i "%choice%" == "15" cls&start /max "" "control"&Goto ϵͳ���
if /i "%choice%" == "16" cls&start /max "" "E:\����\��� - ��ݷ�ʽ.lnk"&Goto ϵͳ���
if /i "%choice%" == "17" cls&start /max "" "E:\����\������ - ��ݷ�ʽ.lnk"&Goto ϵͳ���
if /i "%choice%" == "18" cls&start /max "" "E:\����\Windows Sandbox - ��ݷ�ʽ.lnk"&Goto ϵͳ���
if /i "%choice%" == "19" cls&start /max "" "E:\����\�����¼�� - ��ݷ�ʽ.lnk"&Goto ϵͳ���
if /i "%choice%" == "115" cls&Goto ����Ŀ¼
if /i "%choice%" == "18" cls&Goto ��˫
if /i "%choice%" == "r" cls&Goto RestTeredo
if /i "%choice%" == "q" Popd&Exit
if /i "%choice%" == "001" cls&Goto %���Ĵ���1%
if /i "%choice%" == "*" cls&Goto Start
if /i "%choice%" == "**" cls&Goto Start2
Set var=1
Goto ϵͳӦ��Ŀ¼


:: ��� m5 *********************************************************************
:�½�����
Title �����  ���ļ�
Color df
MODE con: Cols=40 Lines=20
set ������=0
:�½����¿�ʼ
Color df
MODE con: Cols=40 Lines=20
if %������% neq 0 echo (������Ч����������)
set /p ������=������������:
if /i "%������%" == "" cls&set ������=1 &Goto �½����¿�ʼ
echo ������:%������%
echo ����������......�Ժ�
g:
CD g:\f
call hexo new %������% 
Goto Start3

:Start3
cls
Color 5f
MODE con: Cols=40 Lines=20
Set tle3=�Ƿ�ת���½�����
Set var3=0

:Menu3
cls
echo ����:�� %tle3% ��
echo ---------------------------------------
echo �˵�:
echo       ��  ѡ��Ҫת���ļ���Ŀ¼
echo.
echo       ��  ת�Ƶ��½��ļ�����
echo.
echo       0  ����        ��
echo ---------------------------------------
if %var3% neq 0 echo (������Ч����������)
Set choice3=
Set /p choice3=ѡ��:
Set "choice3=%choice3:"=%"
if "%choice3:~-1%"=="=" Goto Menu3
if "%choice3%"=="" Goto Menu3
if /i "%choice3%" == "1" cls&Goto ManuTeredo3
if /i "%choice3%" == "2" cls&Goto �½��ļ���f
if /i "%choice3%" == "0" cls&Goto �ص����˵�
Set var3=1
Goto Menu3

:ManuTeredo3
Color 3f
Title CMD
MODE con: Cols=45 Lines=35
Set tle4=Ŀǰ���ļ���Ŀ¼
Set var4=0

:�ļ���Ŀ¼
cls
echo ����:�� %tle4% ��
echo --------------------------------------------
echo �˵�:
echo       ��  a
echo.
echo       ��  bat����
echo.
echo       ��  Google
echo.
echo       ��  hexo
echo.
echo       ��  windows
echo.
echo       ��  z
echo.
echo       ��  ����
echo.
echo       ��  ���  
echo.
echo       ��  ����
echo.
echo       0  �ص��ϸ��˵�
echo.
echo       00 �ص����˵�
echo.
::echo       ��  Ŀǰû��
echo ---------------------------------------
if %var4% neq 0 echo (������Ч����������)
Set choice4=
Set /p choice4=ѡ��:
Set "choice4=%choice4:"=%"
if "%choice4:~-1%"=="=" Goto �ļ���Ŀ¼
if "%choice4%"=="" Goto �ļ���Ŀ¼
if /i "%choice4%" == "1" cls&Goto �ļ���a
if /i "%choice4%" == "2" cls&Goto �ļ���bat����
if /i "%choice4%" == "3" cls&Goto �ļ���Google
if /i "%choice4%" == "4" cls&Goto �ļ���hexo
if /i "%choice4%" == "5" cls&Goto �ļ���windows
if /i "%choice4%" == "6" cls&Goto �ļ���z
if /i "%choice4%" == "7" cls&Goto �ļ��д���
if /i "%choice4%" == "8" cls&Goto �ļ������
if /i "%choice4%" == "9" cls&Goto �ļ�������
if /i "%choice4%" == "10" cls&Goto �ļ���
if /i "%choice4%" == "0" cls&Goto Start3
if /i "%choice4%" == "00" cls&Goto �ص����˵�
if /i "%choice4%" == "r" cls&Goto RestTeredo
if /i "%choice4%" == "q" Popd&Exit
Set var4=1
Goto �ļ���Ŀ¼

:�ļ���a
move G:\f\source\_posts\%������%.md  G:\f\source\_posts\a
move G:\f\source\_posts\%������%  G:\f\source\_posts\a
Goto End

:�ļ���bat����
move G:\f\source\_posts\%������%.md  G:\f\source\_posts\bat����
move G:\f\source\_posts\%������%  G:\f\source\_posts\bat����
Goto End

:�ļ���Google
move G:\f\source\_posts\%������%.md  G:\f\source\_posts\Google
move G:\f\source\_posts\%������%  G:\f\source\_posts\Google
Goto End

:�ļ���hexo
move G:\f\source\_posts\%������%.md  G:\f\source\_posts\hexo
move G:\f\source\_posts\%������%  G:\f\source\_posts\hexo
Goto End

:�ļ���windows
move G:\f\source\_posts\%������%.md  G:\f\source\_posts\windows
move G:\f\source\_posts\%������%  G:\f\source\_posts\windows
Goto End

:�ļ���z
move G:\f\source\_posts\%������%.md  G:\f\source\_posts\z
move G:\f\source\_posts\%������%  G:\f\source\_posts\z
Goto End

:�ļ��д���
move G:\f\source\_posts\%������%.md  G:\f\source\_posts\����
move G:\f\source\_posts\%������%  G:\f\source\_posts\����
Goto End

:�ļ������
move G:\f\source\_posts\%������%.md  G:\f\source\_posts\���
move G:\f\source\_posts\%������%  G:\f\source\_posts\���
Goto End

:�ļ�������
move G:\f\source\_posts\%������%.md  G:\f\source\_posts\����
move G:\f\source\_posts\%������%  G:\f\source\_posts\����
Goto End


:�½��ļ���f
set �ļ�����=0
:�½��ļ���f��ʼ
Color df
MODE con: Cols=40 Lines=20
if %�ļ�����% neq 0 echo (������Ч����������)
set /p �ļ�����=�������ļ�����:
if /i "%�ļ�����%" == "" cls&set �ļ�����=1 &Goto �½��ļ���f��ʼ
echo �ļ�����:%�ļ�����%
md  G:\f\source\_posts\%�ļ�����%
move G:\f\source\_posts\%������%.md  G:\f\source\_posts\%�ļ�����%
move G:\f\source\_posts\%������%  G:\f\source\_posts\%�ļ�����%
Goto End

:�����ڴ�
echo �����������Ժ󡣡���
::MODE con: Cols=88 Lines=32
@taskkill /f /im explorer.exe&start explorer.exe
@ping -n 3 127.0.0.1>nul
@taskkill /f /im explorer.exe&start explorer.exe
Goto End

:���������ڴ�����
echo �����������Ժ󡣡���
MODE con: Cols=88 Lines=32
start E:\����\1\����.lnk
Goto End

:����1��������������
echo ���ڱ���99�����Ժ󡣡���
MODE con: Cols=88 Lines=32
xcopy "E:\����\hexo���\�������𱸷�.bat" "G:\f\source\_posts\bat\"  /y 
echo -----�����������𱸷�.bat:>>E:\����\���\����df��¼.txt  %date% %time%>>E:\����\���\����df��¼.txt
echo. >>E:\����\���\����df��¼.txt
pause
Goto End

:End
Set ȥ�Ĵ���=%���Ĵ���%
Set ���Ĵ���=
ping 127.1 -n 1 >nul
cls
MODE con: Cols=40 Lines=23
echo ������� !!!
Goto %ȥ�Ĵ���%

:End2
Set ȥ�Ĵ���=%���Ĵ���%
Set ���Ĵ���=
ping 127.1 -n 1 >nul
cls
MODE con: Cols=40 Lines=23
echo ������� !!!
Goto %ȥ�Ĵ���%

:End3
Set choice=0
if "%choice%" neq "" (
    cls
    Color 2e
    MODE con: Cols=40 Lines=23
    if "%choice%" neq "3" (
        echo ������� !!!
        if exist %WINDIR%\System32\timeout.exe (timeout /t 2) else (if exist %WINDIR%\System32\choice.exe (choice /t 2 /d y /n >nul) else (ping 127.1 -n 2 >nul))
    )
    Goto Start2
)

:: ��� m6 ********************************************************************
:��������
MODE con: Cols=40 Lines=35
Set tle0=����˵��
Set var0=0

:����˵��
cls
echo ����:�� %tle0% ��
echo ---------------------------------------
echo       
echo       00  ��ͷ�� ������� Chrome 
echo.
echo       1  ��΢��         01  �ر�
echo.
echo       2  Atom             02  �ر�
echo.
echo       3  Ѷ������         03  �ر�
pause  
Set ȥ�Ĵ���=%���Ĵ���%
Set ���Ĵ���=
Goto %ȥ�Ĵ���%    