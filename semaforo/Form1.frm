VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "Form1"
   ClientHeight    =   7620
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   13755
   LinkTopic       =   "Form1"
   ScaleHeight     =   7620
   ScaleWidth      =   13755
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   9720
      Top             =   720
   End
   Begin VB.PictureBox Picture1 
      Height          =   6495
      Left            =   3840
      Picture         =   "Form1.frx":0000
      ScaleHeight     =   6435
      ScaleWidth      =   5235
      TabIndex        =   0
      Top             =   480
      Width           =   5295
      Begin VB.Shape Shape3 
         BackColor       =   &H00000000&
         BackStyle       =   1  'Opaque
         FillStyle       =   0  'Solid
         Height          =   1695
         Left            =   1440
         Shape           =   3  'Circle
         Top             =   4320
         Visible         =   0   'False
         Width           =   2415
      End
      Begin VB.Shape Shape2 
         BackColor       =   &H00000000&
         BackStyle       =   1  'Opaque
         FillStyle       =   0  'Solid
         Height          =   1695
         Left            =   1200
         Shape           =   3  'Circle
         Top             =   2520
         Visible         =   0   'False
         Width           =   2895
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H00000000&
         BackStyle       =   1  'Opaque
         FillStyle       =   0  'Solid
         Height          =   1695
         Left            =   1320
         Shape           =   3  'Circle
         Top             =   720
         Visible         =   0   'False
         Width           =   2655
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
Shape1.Visible = True
Shape2.Visible = True
Shape3.Visible = True
End Sub

Private Sub Timer1_Timer()
Form1.Caption = Val(Form1.Caption) + 1
If Form1.Caption > 0 Then
Shape1.Visible = False
Shape2.Visible = True
Shape3.Visible = True
If Form1.Caption > 5 Then
Shape1.Visible = True
Shape2.Visible = False
Shape3.Visible = True
If Form1.Caption > 6 Then
Shape1.Visible = True
Shape2.Visible = True
Shape3.Visible = False
If Form1.Caption > 11 Then
Shape1.Visible = True
Shape2.Visible = True
Shape3.Visible = True
Form1.Caption = 0
End If
End If
End If
End If
End Sub
