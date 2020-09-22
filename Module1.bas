Attribute VB_Name = "Module1"
' Code for the module...
Option Explicit

Private Const STARTF_USESHOWWINDOW = &H1
Public Enum enSW
    SW_HIDE = 0
    SW_NORMAL = 1
    SW_MAXIMIZE = 3
    SW_MINIMIZE = 6
End Enum

Global lngProcess As Long
Global lngThread As Long
Global lngProcessID As Long
Global lngThreadID As Long
Global lngReply As Long

Public Type STARTUPINFO
        cb As Long
        lpReserved As String
        lpDesktop As String
        lpTitle As String
        dwX As Long
        dwY As Long
        dwXSize As Long
        dwYSize As Long
        dwXCountChars As Long
        dwYCountChars As Long
        dwFillAttribute As Long
        dwFlags As Long
        wShowWindow As Integer
        cbReserved2 As Integer
        lpReserved2 As Byte
        hStdInput As Long
        hStdOutput As Long
        hStdError As Long
End Type

Public Type PROCESS_INFORMATION
        hProcess As Long
        hThread As Long
        dwProcessId As Long
        dwThreadId As Long
End Type

Public Declare Function WaitForSingleObject Lib "kernel32" _
    (ByVal hHandle As Long, ByVal dwMilliseconds As Long) As Long

Public Declare Function GetExitCodeProcess Lib "kernel32" _
      (ByVal hProcess As Long, lpExitCode As Long) As Long

Public Declare Function CreateProcess Lib "kernel32" Alias _
    "CreateProcessA" (ByVal lpApplicationName As String, ByVal _
    lpCommandLine As String, lpProcessAttributes As Any, _
    lpThreadAttributes As Any, ByVal bInheritHandles As Long, ByVal _
    dwCreationFlags As Any, lpEnvironment As Any, ByVal _
    lpCurrentDriectory As String, lpStartupInfo As STARTUPINFO, _
    lpProcessInformation As PROCESS_INFORMATION) As Long

Public Declare Function CloseHandle Lib "kernel32" (ByVal hObject As _
    Long) As Long

Public Declare Function TerminateProcess Lib "kernel32" (ByVal hProcess _
    As Long, ByVal uExitCode As Long) As Long
    
Global Const NORMAL_PRIORITY_CLASS = &H20&
Global pInfo As PROCESS_INFORMATION
Global sInfo As STARTUPINFO
Global sNull As String

Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long

Public Function RunProcess(sCmd As String, start_size As enSW) As Boolean
    'Use the CreateProcess API to start the job. This will give us
    'Process,Thread,ProcessID and ThreadID handles
    sInfo.cb = Len(sInfo)
    sInfo.dwFlags = STARTF_USESHOWWINDOW
    sInfo.wShowWindow = start_size
    lngReply = CreateProcess(sNull, sCmd, ByVal 0&, ByVal 0&, 1&, _
        NORMAL_PRIORITY_CLASS, ByVal 0&, sNull, sInfo, pInfo)
    
    If lngReply = 0 Then
        RunProcess = False
    Else
        lngProcessID = pInfo.dwProcessId
        lngThreadID = pInfo.dwThreadId
        lngProcess = pInfo.hProcess
        lngThread = pInfo.hThread
        
        'Check every 100 milliseconds if the job is finished
        'Any job started with CreateProcess must call CloseHandle for both the
        'Process and Thread handles. See Timer1 on frmMain
        
        RunProcess = True
    End If
End Function

Public Sub gotoweb(url)
Dim Success As Long
Success = ShellExecute(0, vbNullString, url, vbNullString, "C:\", 1)
End Sub
