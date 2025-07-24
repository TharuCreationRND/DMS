@echo off

REM Check if venv folder exists; if not, create it
if not exist "venv" (
    echo Creating virtual environment...
    python -m venv venv
)

REM Activate virtual environment
call venv\Scripts\activate.bat

REM Upgrade pip
python -m pip install --upgrade pip

REM Install requirements
pip install -r requirements.txt

REM Start Django server in a new window
start cmd /k python manage.py runserver 0.0.0.0:8000



exit
