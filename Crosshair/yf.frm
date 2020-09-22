VERSION 5.00
Begin VB.Form yf 
   BackColor       =   &H00FF00FF&
   BorderStyle     =   0  'None
   ClientHeight    =   495
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   525
   Icon            =   "yf.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   495
   ScaleWidth      =   525
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Interval        =   8000
      Left            =   0
      Top             =   15
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   30
      Top             =   45
   End
End
Attribute VB_Name = "yf"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
     StayOnTop Me
     xf.Show 0, Me
     xy.Show 0, Me
     Move 0, tY(GetY), Screen.Width, tX(1)
End Sub

Private Sub Timer1_Timer()
     Move 0, tY(GetY + 1), Screen.Width, tX(1)
End Sub

Private Sub Timer2_Timer()
     StayOnTop Me
End Sub
