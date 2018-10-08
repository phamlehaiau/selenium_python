echo off
SET browser=%1
:: Create folder of testuites if not exist
    SET folder=%2
    SET string=%folder%
    SET modified=%string:testsuites=reports%

:: Execute testsuite
    FOR %%i IN (%folder%\*) DO (
        start robot -v BROWSER:%browser% -d %modified%_%browser% -o %%~ni_Out.xml -l %%~ni_Log.html -r %%~ni.html %folder%\%%~nxi
    )