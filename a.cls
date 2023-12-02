Dim draw As Boolean

Dim cx, cy As Long

 

Private Sub Command1_Click()

Picdraw.DrawWidth = Picdraw.DrawWidth + 1

End Sub

 

Private Sub Command2_Click()

Picdraw.DrawWidth = Picdraw.DrawWidth - 1

End Sub

 

Private Sub Command3_Click()

Picdraw.Cls

End Sub

 

Private Sub Label1_Click()

Picdraw.ForeColor = vbRed

End Sub

 

Private Sub Label2_Click()

Picdraw.ForeColor = vbBlue

End Sub

 

Private Sub Label3_Click()

Picdraw.ForeColor = vbYellow

End Sub

 

Private Sub Label4_Click()

Picdraw.ForeColor = vbMagenta

End Sub

 

Private Sub Label5_Click()

Picdraw.ForeColor = vbBlack

End Sub

 

Private Sub Label6_Click()

Picdraw.ForeColor = vbCyan

End Sub

 

Private Sub Picdraw_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

draw = True

cx = X

cy = Y

End Sub

 

Private Sub Picdraw_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

If draw = True Then

Picdraw.Line (cx, cy)-(X, Y)

cx = X

cy = Y

End If

End Sub



Private Sub Picdraw_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

draw = False

End Sub