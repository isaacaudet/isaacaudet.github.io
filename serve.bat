@echo off
echo === Isaac Audet's Blog - Local Development ===
echo.

REM Check if Ruby is installed
where ruby >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo Ruby is not installed. Please install Ruby 2.5.0 or higher.
    echo Visit: https://www.ruby-lang.org/en/documentation/installation/
    exit /b 1
)

REM Check if Bundler is installed
where bundle >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo Bundler is not installed. Installing now...
    gem install bundler
    if %ERRORLEVEL% NEQ 0 (
        echo Failed to install Bundler. Try running as administrator.
        exit /b 1
    )
)

REM Install dependencies if needed
if not exist "vendor\bundle" (
    echo Installing dependencies...
    bundle install --path vendor/bundle
    if %ERRORLEVEL% NEQ 0 (
        echo Failed to install dependencies. Check the error messages above.
        exit /b 1
    )
)

REM Set default values
set DRAFTS=
set LIVERELOAD=
set PORT=4000

REM Parse command line arguments
:parse_args
if "%~1"=="" goto run
if "%~1"=="--drafts" (
    set DRAFTS=--drafts
    shift
    goto parse_args
)
if "%~1"=="--livereload" (
    set LIVERELOAD=--livereload
    shift
    goto parse_args
)
if "%~1:~0,7%"=="--port=" (
    for /f "tokens=2 delims==" %%a in ("%~1") do set PORT=%%a
    shift
    goto parse_args
)
shift
goto parse_args

:run
echo Starting Jekyll server...
echo Your site will be available at: http://localhost:%PORT%
echo Press Ctrl+C to stop the server
echo.

REM Run Jekyll
bundle exec jekyll serve --port %PORT% %DRAFTS% %LIVERELOAD%

exit /b 0 