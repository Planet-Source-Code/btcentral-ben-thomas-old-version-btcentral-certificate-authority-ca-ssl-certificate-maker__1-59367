VERSION 5.00
Begin VB.Form Main 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "BTCentral CA"
   ClientHeight    =   1935
   ClientLeft      =   45
   ClientTop       =   360
   ClientWidth     =   6495
   Icon            =   "Main.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1935
   ScaleWidth      =   6495
   StartUpPosition =   2  'CenterScreen
   Begin CA.DMSXpButton Command7 
      Height          =   495
      Left            =   3360
      TabIndex        =   9
      Top             =   840
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   873
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Caption         =   "Sign Application Signing Certificate"
      ForeColor       =   -2147483642
      ForeHover       =   0
   End
   Begin CA.DMSXpButton Aboutcmd 
      Height          =   255
      Left            =   1200
      TabIndex        =   6
      Top             =   1560
      Width           =   975
      _ExtentX        =   1720
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
      Caption         =   "About"
      ForeColor       =   -2147483642
      ForeHover       =   0
   End
   Begin CA.DMSXpButton Command8 
      Height          =   495
      Left            =   4920
      TabIndex        =   5
      Top             =   840
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   873
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Caption         =   "Revoke Certificate(s)"
      ForeColor       =   -2147483642
      ForeHover       =   0
   End
   Begin CA.DMSXpButton Command5 
      Height          =   495
      Left            =   240
      TabIndex        =   4
      Top             =   840
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   873
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Caption         =   "Sign Email Certificate"
      ForeColor       =   -2147483642
      ForeHover       =   0
   End
   Begin CA.DMSXpButton Command4 
      Height          =   495
      Left            =   4920
      TabIndex        =   3
      Top             =   120
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   873
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Caption         =   "Email Certificate"
      ForeColor       =   -2147483642
      ForeHover       =   0
   End
   Begin CA.DMSXpButton Command3 
      Height          =   495
      Left            =   3360
      TabIndex        =   2
      Top             =   120
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   873
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Caption         =   "Sign Server Certificate"
      ForeColor       =   -2147483642
      ForeHover       =   0
   End
   Begin CA.DMSXpButton Command2 
      Height          =   495
      Left            =   1800
      TabIndex        =   1
      Top             =   120
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   873
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Caption         =   "Server Certificate"
      ForeColor       =   -2147483642
      ForeHover       =   0
   End
   Begin CA.DMSXpButton Command1 
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   873
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Caption         =   "Generate CA Certificate"
      ForeColor       =   -2147483642
      ForeHover       =   0
   End
   Begin CA.DMSXpButton Exitcmd 
      Height          =   255
      Left            =   4320
      TabIndex        =   7
      Top             =   1560
      Width           =   975
      _ExtentX        =   1720
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
      Caption         =   "Exit"
      ForeColor       =   -2147483642
      ForeHover       =   0
   End
   Begin CA.DMSXpButton Command6 
      Height          =   495
      Left            =   1800
      TabIndex        =   8
      Top             =   840
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   873
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Caption         =   "Application Signing Certificate"
      ForeColor       =   -2147483642
      ForeHover       =   0
   End
End
Attribute VB_Name = "Main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Aboutcmd_Click()
Unload Me
Main.Show
frmAbout.Show
End Sub

Private Sub Command1_Click()
Unload Me
Main.Show
CAConfig.Show
End Sub

Private Sub Command2_Click()
Unload Me
Main.Show
ServerConfig.Show
End Sub

Private Sub Command3_Click()
    Dim cmd As String
    cmd = "./openssl.exe ca -config CA.ini -msie_hack -out servercert.cer -infiles serverreq.pem"
    If RunProcess(cmd, SW_NORMAL) Then
        Command1.Enabled = True
    Else
        MsgBox "Error, Server Certificate not made!"
    End If
End Sub

Private Sub Command4_Click()
Unload Me
Main.Show
EmailConfig.Show
End Sub

Private Sub Command5_Click()
    Dim cmd As String
    cmd = "./openssl.exe ca -config CA.ini -msie_hack -out emailcert.cer -infiles emailreq.pem"
    If RunProcess(cmd, SW_NORMAL) Then
        Command1.Enabled = True
    Else
        MsgBox "Error, Email Certificate not made!"
    End If
End Sub

Private Sub Command6_Click()
Unload Me
Main.Show
AppConfig.Show
End Sub

Private Sub Command7_Click()
    Dim cmd As String
    cmd = "./openssl.exe ca -config CA.ini -msie_hack -out appcert.cer -infiles appreq.pem"
    If RunProcess(cmd, SW_NORMAL) Then
        Command1.Enabled = True
    Else
        MsgBox "Error, Application Signing Certificate not made!"
    End If
End Sub

Private Sub Command8_Click()
Unload Me
Main.Show
Revoke.Show
End Sub

Private Sub Exitcmd_Click()
End
End Sub
