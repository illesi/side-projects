Attribute VB_Name = "Modul1"
Sub Makró1()
Attribute Makró1.VB_Description = "ebesítés"
Attribute Makró1.VB_ProcData.VB_Invoke_Func = "e\n14"
'
' Makró1 Makró
' ebesítés
'
' Billentyûparancs: Ctrl+e
'
    Columns("E:E").Select
    Columns("E:E").EntireColumn.AutoFit
    Selection.Copy
    Columns("B:B").Select
    ActiveSheet.Paste
    Range("C2").Select
    Range(Selection, Selection.End(xlDown)).Select
    Application.CutCopyMode = False
    Selection.Style = "Currency"
    Selection.NumberFormat = "_-* #,##0.0 $_-;-* #,##0.0 $_-;_-* ""-""?? $_-;_-@_-"
    Selection.NumberFormat = "_-* #,##0 $_-;-* #,##0 $_-;_-* ""-""?? $_-;_-@_-"
    lastrow = ActiveSheet.Cells(Rows.Count, 3).End(xlUp).Row
    Dim a As Currency
    Dim i As Integer
    
    a = 0
    
    For i = lastrow To 2 Step by - 1
    
    a = a + ActiveSheet.Cells(i, 3).Value
    
    Next
    
    ActiveSheet.Cells(lastrow + 1, 3).Value = a
    Range(Selection, Selection.End(xlDown)).Select
    Selection.NumberFormat = "_-* #,##0 $_-;-* #,##0 $_-;_-* ""-""?? $_-;_-@_-"
    ActiveSheet.Range("B2").End(xlDown).Offset(1, 0).Select
    Selection.Value = "Összesen:"
    
    blastRow = ActiveSheet.Cells(Rows.Count, 2).End(xlUp).Row
    clastRow = ActiveSheet.Cells(Rows.Count, 2).End(xlUp).Row
    Range("B2:B" & blastRow & ",C2:C" & clastRow).Select

    
End Sub
