Attribute VB_Name = "Module1"
Public Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xsrc As Long, ByVal ysrc As Long, ByVal dwRop As Long) As Long
Public Declare Function GetDesktopWindow Lib "user32" () As Long
Public Declare Function GetDC Lib "user32" (ByVal hwnd As Long) As Long
Public Declare Function ReleaseDC Lib "user32" (ByVal hwnd As Long, ByVal hdc As Long) As Long

Private Sub Timer1_Timer()
     Dim WH As Long, WD As Long
     Dim xsrc, ysrc
     Picture1.Move 0, 0, 50 * 15, 50 * 15 'Width, Height
     WH = GetDesktopWindow
     WD = GetDC(WH)
     xsrc = GetX ' * 15 ' Me.Left \ 15
     ysrc = GetY ' * 15 'Me.Top \ 15
     Caption = "Left:" & xsrc & ", " & "Top:" & ysrc
     BitBlt Picture1.hdc, 0, 0, Width \ 15, Height \ 15, WD, xsrc, ysrc, vbSrcCopy
     ReleaseDC WH, WD
     Picture1.Refresh
End Sub
