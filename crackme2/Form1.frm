VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   0  '없음
   Caption         =   "abex 2nd crackme"
   ClientHeight    =   2295
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4140
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   2295
   ScaleWidth      =   4140
   StartUpPosition =   2  '화면 가운데
   Begin VB.CommandButton Command3 
      Caption         =   "&Check"
      Height          =   375
      Left            =   3000
      TabIndex        =   7
      Top             =   600
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&About"
      Height          =   375
      Left            =   3000
      TabIndex        =   6
      Top             =   1200
      Width           =   975
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   120
      TabIndex        =   5
      Top             =   1680
      Width           =   2535
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   3
      Top             =   840
      Width           =   2535
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00000000&
      Caption         =   "&Quit"
      Height          =   375
      Left            =   3000
      MaskColor       =   &H00000000&
      TabIndex        =   1
      Top             =   1800
      Width           =   975
   End
   Begin VB.Label Label3 
      BackColor       =   &H00000000&
      Caption         =   "Serial:"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   1440
      Width           =   495
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00C0C0C0&
      BorderWidth     =   2
      X1              =   2760
      X2              =   2760
      Y1              =   480
      Y2              =   2280
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00C0C0C0&
      BorderWidth     =   2
      X1              =   0
      X2              =   4200
      Y1              =   480
      Y2              =   480
   End
   Begin VB.Label Label2 
      BackColor       =   &H00000000&
      Caption         =   "abex' 2nd crackme"
      BeginProperty Font 
         Name            =   "Terminal"
         Size            =   12
         Charset         =   255
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   360
      TabIndex        =   2
      Top             =   120
      Width           =   3375
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "Name:"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   600
      Width           =   495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command1_Click()
End
End Sub

Private Sub Command2_Click()
var_84 = "About"
var_74 = "abex' 2nd crackme" & Chr(13) & Chr(10) & "coded on 19th September 1999"
var_24 = MsgBox(var_74, 0, var_84, var_94, var_A4)
Exit Sub
End Sub

Private Sub Command3_Click()
   var_74 = Form1.Text1.Text
   If (Len(var_74) < 4) Then
     var_AC = "Error!"
     var_9C = "Please enter at least 4 chars as name!"
     var_64 = MsgBox(var_9C, 0, var_AC, var_BC, var_CC)
   End If
   var_8008 = (Len(var_74) < 4)
   If var_8008 = 0 Then
     For var_24 = 1 To 4 Step 1
         var_8010 = Asc(CStr(Mid(var_74, CLng(var_24), 1)))
         var_D4 = var_8010
         var_44 = var_44 & Hex(var_8010 + 100)
       Next var_24

     var_88 = Form1.Text2.Text
     If (var_44 = var_88) Then
       var_AC = "Congratulations!"
       var_9C = "Yep, this key is right!"
       var_64 = MsgBox(var_9C, 0, var_AC, var_BC, var_CC)
     Else
     If (var_44 <> var_88) Then
       var_AC = "Wrong serial!"
       var_9C = "Nope, this serial is wrong!"
       var_84 = MsgBox(var_9C, 0, var_AC, var_BC, var_CC)
     End If
   End If
   End If
   Exit Sub
End Sub
