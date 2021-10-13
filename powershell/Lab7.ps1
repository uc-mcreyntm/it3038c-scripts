function FindSheets {

$path = Read-Host -Prompt 'Enter path'

dir $path -r *.xlsx | Get-ExcelFileSummary | ft
}

function ReadSheet {

$excelpath = Read-Host -Prompt 'Enter path'

Import-Excel -Path $excelpath


}

function SheetInfo {

$sheetpath = Read-Host -Prompt 'Enter Path'

Get-ExcelWorkbookInfo -Path $sheetpath

}

