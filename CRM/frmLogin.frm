VERSION 5.00
Begin VB.Form frmLogin 
   BackColor       =   &H00FFFFFF&
   Caption         =   "��¼ϵͳ"
   ClientHeight    =   5760
   ClientLeft      =   4860
   ClientTop       =   2580
   ClientWidth     =   8370
   FillColor       =   &H80000013&
   LinkTopic       =   "Form1"
   ScaleHeight     =   5760
   ScaleWidth      =   8370
   Begin VB.CommandButton cmdCancel 
      BackColor       =   &H80000013&
      Caption         =   "ȡ��"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4200
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   3600
      Width           =   1815
   End
   Begin VB.CommandButton cmdConfirm 
      BackColor       =   &H80000013&
      Caption         =   "ȷ��"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2040
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   3600
      Width           =   1815
   End
   Begin VB.TextBox txtPassword 
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      IMEMode         =   3  'DISABLE
      Left            =   3480
      MaxLength       =   6
      PasswordChar    =   "*"
      TabIndex        =   4
      Top             =   2640
      Width           =   2175
   End
   Begin VB.TextBox txtUsername 
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3480
      TabIndex        =   3
      Top             =   1920
      Width           =   2175
   End
   Begin VB.Label lblTip 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Ĭ���û��� Admin ���� 000000"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000001&
      Height          =   300
      Left            =   3720
      TabIndex        =   7
      Top             =   4560
      Width           =   3060
   End
   Begin VB.Label lblPassword 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "����"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   14.25
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000001&
      Height          =   375
      Left            =   2370
      TabIndex        =   2
      Top             =   2640
      Width           =   570
   End
   Begin VB.Label lblUsername 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "�û���"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   14.25
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000001&
      Height          =   375
      Left            =   2085
      TabIndex        =   1
      Top             =   1920
      Width           =   870
   End
   Begin VB.Label lblCaption 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "�� �� �� ó �� �� ϵ ͳ"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   24
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   615
      Left            =   1740
      TabIndex        =   0
      Top             =   600
      Width           =   4800
   End
End
Attribute VB_Name = "frmLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub login()
    modCreateConnection.createConnection
'    Dim rs As New ADODB.Recordset
    
    rs.Open "select * from users where username = '" & txtUsername & "'", conn, adOpenStatic, adLockReadOnly
    
    If rs.RecordCount < 1 Then
        MsgBox "�û���������!", vbOKOnly + vbExclamation, "��¼ϵͳ"
        txtUsername.SetFocus
        
    Else
        If txtPassword = rs!password Then
            MsgBox "��¼�ɹ�", vbOKOnly + vbInformation, "��¼ϵͳ"
            Unload frmLogin
            frmMain.Show
        Else
            MsgBox "���벻��ȷ", vbOKOnly + vbExclamation, "��¼ϵͳ"
            txtPassword.SetFocus
        End If
        
    
    End If
    Set rs = Nothing

End Sub


Private Sub cmdConfirm_Click()
    

    If txtPassword = "" Or txtUsername = "" Then
        MsgBox "�û��������벻��Ϊ�գ�", vbOKOnly + vbInformation, "��¼ϵͳ"
    
    Else
        Call login
    
    End If
    
End Sub

Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub txtPassword_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        Call cmdConfirm_Click
    End If

End Sub

Private Sub txtUsername_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        txtPassword.SetFocus
    End If
End Sub
