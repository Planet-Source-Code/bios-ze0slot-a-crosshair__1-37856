Attribute VB_Name = "AlwaysOnTop"
Public Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Public Const HWND_TOPMOST = -1
Public Const HWND_NOTOPMOST = -2
Public Const SWP_NOSIZE = &H1
Public Const SWP_NOMOVE = &H2
Public Const FLAGS = SWP_NOSIZE Or SWP_NOMOVE
Public OnTop As Boolean

Public Function StayOnTop(TheForm As Form)
    Dim SetWinOnTop As Long
    SetWinOnTop = SetWindowPos(TheForm.hwnd, HWND_TOPMOST, 0, 0, 0, 0, FLAGS)
    OnTop = True
End Function

Public Function NotOnTop(TheForm As Form)
    Dim SetWinOnTop As Long
    SetWinOnTop = SetWindowPos(TheForm.hwnd, HWND_NOTOPMOST, 0, 0, 0, 0, FLAGS)
    OnTop = False
End Function
