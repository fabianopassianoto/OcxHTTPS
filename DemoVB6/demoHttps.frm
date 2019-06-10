VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3705
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6960
   LinkTopic       =   "Form1"
   ScaleHeight     =   3705
   ScaleWidth      =   6960
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   2295
      Left            =   120
      TabIndex        =   1
      Text            =   "Text1"
      Top             =   120
      Width           =   6735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   735
      Left            =   4920
      TabIndex        =   0
      Top             =   2520
      Width           =   1935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public https As spdHTTPSX

Private Sub Command1_Click()
    Set https = New HTTPSX.spdHTTPSX
    Text1.Text = https.PutHTTPS(" URL ", "{""endereco"" : """"}")
End Sub
