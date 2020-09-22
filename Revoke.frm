VERSION 5.00
Begin VB.Form Revoke 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Revoke Certificate"
   ClientHeight    =   1455
   ClientLeft      =   45
   ClientTop       =   360
   ClientWidth     =   4695
   Icon            =   "Revoke.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1455
   ScaleWidth      =   4695
   StartUpPosition =   1  'CenterOwner
   Begin CA.DMSXpButton Command2 
      Height          =   255
      Left            =   1800
      TabIndex        =   2
      Top             =   1080
      Width           =   1335
      _ExtentX        =   2355
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
      Caption         =   "Generate CRL"
      ForeColor       =   -2147483642
      ForeHover       =   0
   End
   Begin CA.DMSXpButton Command1 
      Height          =   255
      Left            =   360
      TabIndex        =   1
      Top             =   1080
      Width           =   1335
      _ExtentX        =   2355
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
      Caption         =   "Revoke"
      ForeColor       =   -2147483642
      ForeHover       =   0
   End
   Begin CA.DMSXpButton Command3 
      Height          =   255
      Left            =   3240
      TabIndex        =   3
      Top             =   1080
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
   Begin VB.Label Label1 
      BackColor       =   &H00FFFFFF&
      Caption         =   $"Revoke.frx":0442
      Height          =   735
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   4215
   End
End
Attribute VB_Name = "Revoke"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Unload Me
    Revoke.Show
    Dim cmd As String
    cmd = "./openssl.exe ca -config CA.ini -revoke revoke.cer -crl_reason unspecified"
    If RunProcess(cmd, SW_NORMAL) Then
        Command1.Enabled = True
    Else
        MsgBox "Error, Certificate not revoked!"
    End If
End Sub

Private Sub Command2_Click()
    Unload Me
    Revoke.Show
    Dim cmd As String
    cmd = "./openssl.exe ca -config CA.ini -gencrl -out crl.crl"
    If RunProcess(cmd, SW_NORMAL) Then
        Command1.Enabled = True
    Else
        MsgBox "Error, CA Certificate not made!"
    End If
End Sub

Private Sub Command3_Click()
Unload Me
Main.Show
End Sub
