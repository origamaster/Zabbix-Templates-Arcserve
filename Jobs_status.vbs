Dim ObjExec
Dim strFromProc

Set objShell = WScript.CreateObject("WScript.Shell")
Set ObjExec = objShell.Exec("""C:\Program Files (x86)\CA\ARCserve Backup\ca_qmgr.exe"" -list")
strFromProc = ObjExec.StdOut.ReadAll()
result = InStr(strFromProc, "FAILED")
if isEmpty(result) then 
	WScript.Echo "1"

else 
	WScript.Echo "0"
End if