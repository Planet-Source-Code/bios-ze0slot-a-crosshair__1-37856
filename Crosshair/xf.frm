VERSION 5.00
Begin VB.Form xf 
   BackColor       =   &H00FF00FF&
   BorderStyle     =   0  'None
   ClientHeight    =   495
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   480
   LinkTopic       =   "Form2"
   ScaleHeight     =   495
   ScaleWidth      =   480
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   30
      Top             =   45
   End
   Begin VB.Timer Timer2 
      Interval        =   8000
      Left            =   0
      Top             =   0
   End
End
Attribute VB_Name = "xf"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
     StayOnTop Me
     Move tX(GetX + 1), 0, tX(1), Screen.Height
End Sub

Private Sub Timer1_Timer()
     Move tX(GetX + 1), 0, tX(1), Screen.Height
End Sub
