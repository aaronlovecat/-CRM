VERSION 5.00
Begin VB.Form frmMain 
   BackColor       =   &H00FFFFFF&
   Caption         =   "������ó����ϵͳ"
   ClientHeight    =   6630
   ClientLeft      =   2595
   ClientTop       =   2880
   ClientWidth     =   11820
   LinkTopic       =   "Form1"
   ScaleHeight     =   6630
   ScaleWidth      =   11820
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   495
      Left            =   5280
      TabIndex        =   3
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Frame fra 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      Caption         =   "Frame1"
      ForeColor       =   &H80000008&
      Height          =   1575
      Left            =   240
      TabIndex        =   2
      Top             =   480
      Width           =   5295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "�˳�ϵͳ"
      Height          =   375
      Left            =   7080
      TabIndex        =   1
      Top             =   5760
      Width           =   1935
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   1200
      Top             =   5760
   End
   Begin VB.Label lblTimer 
      AutoSize        =   -1  'True
      Caption         =   "lblTimer"
      Height          =   180
      Left            =   480
      TabIndex        =   0
      Top             =   5880
      Width           =   720
   End
   Begin VB.Menu mnuBusiness 
      Caption         =   " �ճ�ҵ�� |"
      WindowList      =   -1  'True
      Begin VB.Menu mnuQuotation 
         Caption         =   "¼�뱨�۵�"
      End
      Begin VB.Menu mnuEditQuotation 
         Caption         =   "�༭���۵�"
      End
   End
   Begin VB.Menu mnuDocuments 
      Caption         =   "���ݹ��� |"
   End
   Begin VB.Menu mnuBasicInfo 
      Caption         =   "������Ϣ |"
      Begin VB.Menu mnuAddCustomer 
         Caption         =   "��ӿͻ�"
      End
      Begin VB.Menu mnuModCustomer 
         Caption         =   "ά���ͻ�"
      End
      Begin VB.Menu seprator1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuAddSupplier 
         Caption         =   "��ӹ�Ӧ��"
      End
      Begin VB.Menu mnuUsers 
         Caption         =   "ά����Ӧ��"
      End
      Begin VB.Menu seprator2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuAddContact 
         Caption         =   "�����ϵ��"
      End
      Begin VB.Menu mnuModContact 
         Caption         =   "ά����ϵ��"
      End
   End
   Begin VB.Menu mnuBrowsePrint 
      Caption         =   "�����ӡ"
   End
   Begin VB.Menu mnuSysConfig 
      Caption         =   "ϵͳ����"
      Begin VB.Menu mnuUser 
         Caption         =   "�û�����"
      End
      Begin VB.Menu mnuUserConfig 
         Caption         =   "ʹ������"
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command2_Click()
    frmManageUser.Show
    
End Sub

Private Sub mnuAddCustomer_Click()
    frmAddCustomer.Show
End Sub

Private Sub Command1_Click()
    Unload Me
End Sub

Private Sub mnuExit_Click()
    Unload Me
End Sub

Private Sub mnuAddUser_Click()

End Sub

Private Sub mnuPrintOut_Click()

End Sub

Private Sub Timer1_Timer()
    lblTimer.Caption = Date
End Sub
