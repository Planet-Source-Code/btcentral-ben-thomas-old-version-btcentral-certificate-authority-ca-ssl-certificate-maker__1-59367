VERSION 5.00
Begin VB.Form AppConfig 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Application Configuration Writer"
   ClientHeight    =   2415
   ClientLeft      =   45
   ClientTop       =   360
   ClientWidth     =   4935
   Icon            =   "AppConfg.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2415
   ScaleWidth      =   4935
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text11 
      Height          =   1095
      Left            =   3480
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   18
      Text            =   "AppConfg.frx":0442
      Top             =   5040
      Width           =   3015
   End
   Begin VB.TextBox Text7 
      Height          =   615
      Left            =   3480
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   17
      Text            =   "AppConfg.frx":05CE
      Top             =   4320
      Width           =   3015
   End
   Begin VB.TextBox Text5 
      Height          =   615
      Left            =   3480
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   16
      Text            =   "AppConfg.frx":05E9
      Top             =   3600
      Width           =   3015
   End
   Begin VB.TextBox Text3 
      Height          =   975
      Left            =   3480
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   15
      Text            =   "AppConfg.frx":0610
      Top             =   2520
      Width           =   3015
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   2040
      MaxLength       =   2
      TabIndex        =   13
      Text            =   "GB"
      Top             =   1560
      Width           =   2415
   End
   Begin VB.TextBox Text10 
      Height          =   285
      Left            =   2040
      TabIndex        =   11
      Text            =   "example@rootca.com"
      Top             =   1200
      Width           =   2415
   End
   Begin VB.TextBox Text6 
      Height          =   285
      Left            =   2040
      TabIndex        =   9
      Text            =   "Software Development"
      Top             =   840
      Width           =   2415
   End
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   2040
      TabIndex        =   7
      Text            =   "Example"
      Top             =   480
      Width           =   2415
   End
   Begin CA.DMSXpButton Command2 
      Height          =   255
      Left            =   720
      TabIndex        =   6
      Top             =   2040
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
      Top             =   2040
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
      Top             =   2040
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
   Begin VB.TextBox Text9 
      Height          =   855
      Left            =   240
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   2
      Text            =   "AppConfg.frx":065B
      Top             =   5280
      Width           =   3015
   End
   Begin VB.TextBox Text8 
      Height          =   285
      Left            =   2040
      TabIndex        =   1
      Text            =   "Example Software Development."
      Top             =   120
      Width           =   2415
   End
   Begin VB.TextBox Text1 
      Height          =   2655
      Left            =   240
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   0
      Text            =   "AppConfg.frx":068D
      Top             =   2520
      Width           =   3015
   End
   Begin VB.Label Label5 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Country:"
      Height          =   255
      Left            =   480
      TabIndex        =   14
      Top             =   1590
      Width           =   1455
   End
   Begin VB.Label Label4 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Email Address:"
      Height          =   255
      Left            =   480
      TabIndex        =   12
      Top             =   1230
      Width           =   1455
   End
   Begin VB.Label Label3 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Department Name:"
      Height          =   255
      Left            =   480
      TabIndex        =   10
      Top             =   870
      Width           =   1455
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Company Name:"
      Height          =   255
      Left            =   480
      TabIndex        =   8
      Top             =   510
      Width           =   1455
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Signing Name:"
      Height          =   255
      Left            =   480
      TabIndex        =   3
      Top             =   150
      Width           =   1455
   End
End
Attribute VB_Name = "AppConfig"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim iFileNum As Integer
Private Sub Command1_Click()
iFileNum = FreeFile
Open App.Path & "\app.ini" For Output As iFileNum
Print #iFileNum, Text1.Text
Print #iFileNum, "countryName_default = " & Text2.Text
Print #iFileNum, Text3.Text
Print #iFileNum, "organizationName_default = " & Text4.Text
Print #iFileNum, Text5.Text
Print #iFileNum, "organizationalUnitName_default = " & Text6.Text
Print #iFileNum, Text7.Text
Print #iFileNum, "commonName_default = " & Text8.Text
Print #iFileNum, Text9.Text
Print #iFileNum, "emailAddress_default = " & Text10.Text
Print #iFileNum, Text11.Text
Close iFileNum
End Sub

Private Sub Command2_Click()
    Dim cmd As String
    cmd = "./openssl.exe req -config app.ini -new -nodes -keyout appkey.pem -out appreq.pem"
    If RunProcess(cmd, SW_NORMAL) Then
        Command1.Enabled = True
    Else
        MsgBox "Error, Server Certificate request not made!"
    End If
End Sub

Private Sub Command3_Click()
Unload Me
End Sub

