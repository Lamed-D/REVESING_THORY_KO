VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  '단일 고정
   Caption         =   "abex' 4th crackme"
   ClientHeight    =   1455
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4215
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1455
   ScaleWidth      =   4215
   StartUpPosition =   2  '화면 가운데
   Begin VB.CommandButton Command1 
      Caption         =   "&Registered"
      Enabled         =   0   'False
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   960
      Width           =   3975
   End
   Begin VB.Frame Frame1 
      Caption         =   "Serial:"
      Height          =   735
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3975
      Begin VB.TextBox Text1 
         Height          =   285
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   3615
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public global_52 As String

Private Sub Form_Load()
   global_52 = Hour(Now) * 5 + 1000 * Year(Now)
   Exit Sub
End Sub

Private Sub Text1_Change()
   If (Form1.Text1.Text = global_52) Then
     Form1.Command1.Enabled = True
   End If
   Exit Sub
End Sub

Private Sub Command1_Click()
   var_D4 = "Well done!"
   var_C4 = "Very good, you got it!" & Chr(10) & Chr(13) & "Mail me how you did it:" & Chr(10) & Chr(13) & "abex2000@gmx.net"
   var_24 = MsgBox(var_C4, 0, var_D4, var_E4, var_F4)
   Exit Sub
End Sub
