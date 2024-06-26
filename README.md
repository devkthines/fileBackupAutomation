# fileBackupAutomation

# Instructions
---
Setup script by changing variable placeholders

## Automate it to run with Task Manager
---
To add your PowerShell script to Task Scheduler in Windows, follow these steps:

1. **Open Task Scheduler**: You can open Task Scheduler by searching for it in the Start menu or by pressing `Win + R`, typing `taskschd.msc`, and hitting Enter.

2. **Create a new task**: In Task Scheduler, navigate to the `Action` menu and select `Create Task`.

3. **General Tab**:
   - Enter a name for your task.
   - Optionally, provide a description.
   - Make sure the "Run whether user is logged on or not" option is selected.
   - Check the "Run with highest privileges" option.

4. **Triggers Tab**:
   - Click on `New...` to add a new trigger.
   - Select `Daily` as the trigger type.
   - Set the frequency and time you want the script to run daily.
   - Click `OK`.

5. **Actions Tab**:
   - Click on `New...` to add a new action.
   - Set the action to `Start a program`.
   - In the `Program/script` field, enter `powershell.exe`.
   - In the `Add arguments (optional)` field, enter the path to your PowerShell script. For example:
     ```
     -File "C:\Path\To\Your\Script.ps1"
     ```
   - Click `OK`.

6. **Conditions Tab** (Optional):
   - Adjust any conditions if needed, such as power settings or network connection.

7. **Settings Tab** (Optional):
   - Adjust any additional settings as needed.

8. **Save the task**: Click `OK` to save the task.

Once you've set up the task in Task Scheduler, it will run your PowerShell script at the specified time daily. Make sure your script works as expected when manually executed before scheduling it.