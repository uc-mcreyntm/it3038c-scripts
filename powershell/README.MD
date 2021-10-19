# Lab 7
In order to run the script I have created, you will need to install the Powershell script ImportExcel. Open up an instance of powershell and use the following command:
```powershell
Install-Module -Name ImportExcel
```

Now, lets run the script
```powershell
C:\Path\To\Script
```

After running the script, all of the functions should be loaded into powershell. This script has a few functions you can use to streamline the use of excel sheets, so lets try one out.
```powershell
FindSheets
```
After entering the specified path, the script will look through the folder (recursively) and find all of the *.xlsx files, displaying basic information about each, such as numbers of rows and colums. This will also include all of the worksheets within an xlsx file

Lets test out the next function:
```powershell
ReadSheet
```
Enter in the path of your sheet, then it will display to you all of the data in the rows and colums. This is a much lighter weight than opening the file in Excel, so you can look through sheets much quicker using this script

Lets test out the last function:
```powershell
SheetInfo
```
Enter in the path of the sheet, and this will pull more detailed information about the sheet, such as title, subject, author, and created dates.

