Attribute VB_Name = "modMouseModule"
'[+]--date July-15-2002
'[-]--MouseModule
' |
'  -----Programmed by : BIOS [zer0slot]

Option Explicit
Public Declare Function WindowFromPoint Lib "user32" (ByVal X As Long, ByVal Y As Long) As Long
Public Declare Function GetWindowRect Lib "user32" (ByVal hOBJ As Long, lpRect As RECT) As Boolean
Public Declare Function GetCursorPos Lib "user32" (lpPoint As PointAPI) As Long
Public Declare Function SetCursorPos Lib "user32" (ByVal X As Long, ByVal Y As Long) As Long
Public Declare Sub mouse_event Lib "user32" (ByVal dwFlags As Long, ByVal dx As Long, ByVal dy As Long, ByVal cButtons As Long, ByVal dwExtraInfo As Long)

Public Pnt As PointAPI

Public OBJ_Top, _
       OBJ_Left, _
       OBJ_Right, _
       OBJ_Bottom, _
       OBJ_Width, _
       OBJ_Height
       
Public Type PointAPI
    X As Long
    Y As Long
End Type

Public Type RECT
    LEFT As Long
    TOP As Long
    RIGHT As Long
    BOTTOM As Long
End Type

Function GetX() As Integer
     GetCursorPos Pnt
     GetX = Pnt.X
End Function

Function GetY() As Integer
     GetCursorPos Pnt
     GetY = Pnt.Y
End Function

Function SetPosition(X As Integer, Y As Integer)
     SetCursorPos X, Y
End Function


'Function ThisObjectHandle(hobj As Object)
'     ThisObjectHandle = WindowFromPoint(GetX, GetY)
'End Function

Function GetObjectHandle() As Long
     GetObjectHandle = WindowFromPoint(GetX, GetY)
End Function

Sub GetWindowAttributes()
     Dim WindowRect As RECT
     GetWindowRect GetObjectHandle, WindowRect
     OBJ_Left = WindowRect.LEFT * 15
     OBJ_Top = WindowRect.TOP * 15
     OBJ_Right = WindowRect.RIGHT * 15
     OBJ_Bottom = WindowRect.BOTTOM * 15
     OBJ_Width = (WindowRect.RIGHT - WindowRect.LEFT) * 15
     OBJ_Height = (WindowRect.BOTTOM - WindowRect.TOP) * 15
End Sub

