VERSION 5.00
Begin VB.Form EmailConfig 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Email Configuration Writer"
   ClientHeight    =   1695
   ClientLeft      =   45
   ClientTop       =   360
   ClientWidth     =   4935
   Icon            =   "EmailConfg.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1695
   ScaleWidth      =   4935
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text7 
      Height          =   1095
      Left            =   3360
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   12
      Text            =   "EmailConfg.frx":0442
      Top             =   3480
      Width           =   3015
   End
   Begin VB.TextBox Text3 
      Height          =   615
      Left            =   3360
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   11
      Text            =   "EmailConfg.frx":05CE
      Top             =   1800
      Width           =   3015
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   2040
      MaxLength       =   2
      TabIndex        =   9
      Text            =   "GB"
      Top             =   840
      Width           =   2295
   End
   Begin VB.TextBox Text6 
      Height          =   285
      Left            =   2040
      TabIndex        =   7
      Text            =   "example@rootca.com"
      Top             =   480
      Width           =   2295
   End
   Begin CA.DMSXpButton Command2 
      Height          =   255
      Left            =   720
      TabIndex        =   6
      Top             =   1320
      Width           =   1095
      _ExtentX        =   1931
      _ExtentY        =   450
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Caption         =   "Create CSR"
      ForeColor       =   -2147483642
      ForeHover       =   0
   End
   Begin CA.DMSXpButton Command3 
      Height          =   255
      Left            =   3120
      TabIndex        =   5
      Top             =   1320
      Width           =   1095
      _ExtentX        =   1931
      _ExtentY        =   450
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Caption         =   "Back"
      ForeColor       =   -2147483642
      ForeHover       =   0
   End
   Begin CA.DMSXpButton Command1 
      Height          =   255
      Left            =   1920
      TabIndex        =   4
      Top             =   1320
      Width           =   1095
      _ExtentX        =   1931
      _ExtentY        =   450
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Caption         =   "Write Config"
      ForeColor       =   -2147483642
      ForeHover       =   0
   End
   Begin VB.TextBox Text5 
      Height          =   855
      Left            =   3360
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   2
      Text            =   "EmailConfg.frx":05E9
      Top             =   2520
      Width           =   3015
   End
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   2040
      TabIndex        =   1
      Text            =   "John Doe"
      Top             =   120
      Width           =   2295
   End
   Begin VB.TextBox Text1 
      Height          =   2775
      Left            =   240
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   0
      Text            =   "EmailConfg.frx":061B
      Top             =   1800
      Width           =   3015
   End
   Begin VB.Label Label5 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Country:"
      Height          =   255
      Left            =   600
      TabIndex        =   10
      Top             =   870
      Width           =   1335
   End
   Begin VB.Label Label4 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Email Address:"
      Height          =   255
      Left            =   600
      TabIndex        =   8
      Top             =   510
      Width           =   1335
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Your Name:"
      Height          =   255
      Left            =   600
      TabIndex        =   3
      Top             =   150
      Width           =   1335
   End
End
Attribute VB_Name = "EmailConfig"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim iFileNum As Integer
Private Sub Command1_Click()
iFileNum = FreeFile
Open App.Path & "\email.ini" For Output As iFileNum
Print #iFileNum, Text1.Text
Print #iFileNum, "countryName_default = " & Text2.Text
Print #iFileNum, Text3.Text
Print #iFileNum, "commonName_default = " & Text4.Text
Print #iFileNum, Text5.Text
Print #iFileNum, "emailAddress_default = " & Text6.Text
Print #iFileNum, Text7.Text
Close iFileNum
End Sub

Private Sub Command2_Click()
    Dim cmd As String
    cmd = "./openssl.exe req -config email.ini -new -nodes -keyout emailkey.pem -out emailreq.pem"
    If RunProcess(cmd, SW_NORMAL) Then
        Command1.Enabled = True
    Else
        MsgBox "Error, CA Certificate not made!"
    End If
End Sub

Private Sub Command3_Click()
Unload Me
End Sub
