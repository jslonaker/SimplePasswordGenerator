Imports System.Web.Security
Imports System.Text.RegularExpressions
Imports System
Imports System.Data
Imports System.Windows



Class MainWindow
    Dim strPassword As String = ""
    Dim intPwLength As Integer = 32
    Dim intNonAlphaCharCount As String = 0
    Private _pwList As List(Of String) = New List(Of String)
    Public Property PwList As List(Of String)
        Get
            Return _pwList
        End Get
        Set(value As List(Of String))
            _pwList = value
        End Set
    End Property
    Private Sub UpdatePwList(ByVal PasswordString As String)
        If Not _pwList.Contains(PasswordString) Then
            _pwList.Add(PasswordString)

        End If

    End Sub
    Public Sub ContextMenuCopyfunction() Handles ContextMenuCopy.Click
        If Not (tbNewPassword.SelectedItem Is Nothing) Then
            Clipboard.SetText(tbNewPassword.SelectedItem)

        End If

    End Sub
    Public Sub ContextMenuUseFunction() Handles ContextMenuUseItem.Click
        If Not (tbNewPassword.SelectedItem Is Nothing) Then
            Clipboard.SetText(tbNewPassword.SelectedItem)
            Dim item = (tbNewPassword.SelectedItem)
            Dim newList As New List(Of String)

            For Each i In tbNewPassword.Items
                If Not (i = item) Then
                    newList.Add(i)
                End If
            Next
            PwList = newList
            tbNewPassword.ItemsSource = PwList
            tbNewPassword.Items.Refresh()

        End If
    End Sub
    Private Function genPW(ByVal pwLength As Int32, ByVal pwNonAlphaCharCount As Int32)


        strPassword = Membership.GeneratePassword(pwLength, pwNonAlphaCharCount)
        If intNonAlphaCharCount = 0 Then
            Dim newPassword As String = Membership.GeneratePassword(128, pwNonAlphaCharCount)
            newPassword = Regex.Replace(newPassword, "[^a-zA-Z0-9]", Function(m) "")
            strPassword = newPassword.Substring(0, intPwLength)
        End If
        Return strPassword

    End Function
    Sub autoGenPasswords()
        Dim bFieldsArePopulated As Boolean = False
        Dim bPWLengthIsGreaterThanNonAlphaCharCount = False
        Dim pwLength As Int32 = 0
        Dim pwNonAlphaCharCount As Int32 = 0

        bFieldsArePopulated = True
        pwLength = Convert.ToDouble(intPwLength)
        pwNonAlphaCharCount = Convert.ToDouble(intNonAlphaCharCount)
        If pwNonAlphaCharCount <= pwLength Then
            bPWLengthIsGreaterThanNonAlphaCharCount = True
        End If

        If bPWLengthIsGreaterThanNonAlphaCharCount = True Then
            PwList = New List(Of String)

            Dim i = 0
            While (i < 10)
                strPassword = genPW(pwLength, pwNonAlphaCharCount)
                UpdatePwList(strPassword)
                i = i + 1

            End While
        End If
        If bPWLengthIsGreaterThanNonAlphaCharCount = False Then
            MessageBox.Show("Password length must be equal to or greater than special character count.")
        End If
        tbNewPassword.ItemsSource = _pwList
        tbNewPassword.Items.Refresh()



    End Sub

    Private Sub button_Click(sender As Object, e As RoutedEventArgs) Handles button.Click
        autoGenPasswords()
    End Sub

    Private Sub tb_pwLength_KeyUp(sender As Object, e As KeyEventArgs) Handles tb_pwLength.KeyUp
        intPwLength = tb_pwLength.Text
        Dim regex As New Regex("[^0-9]+")
        Dim test As String = e.Handled = regex.IsMatch(intPwLength)
        If Not test = True Then
            MessageBox.Show("only numbers are allowed in this field.")
            tb_pwLength.Text = tb_pwLength.Text.Substring(0, tb_pwLength.Text.Length - 1)
        End If

    End Sub

    Private Sub tb_nonAlpha_KeyUp(sender As Object, e As KeyEventArgs) Handles tb_nonAlpha.KeyUp
        intNonAlphaCharCount = tb_nonAlpha.Text
        Dim regex As New Regex("[^0-9]+")
        Dim test As String = e.Handled = regex.IsMatch(intNonAlphaCharCount)
        If Not test = True Then
            MessageBox.Show("only numbers are allowed in this field.")
            tb_nonAlpha.Text = tb_nonAlpha.Text.Substring(0, tb_nonAlpha.Text.Length - 1)
        End If

    End Sub

    Private Sub Window_MouseLeftButtonDown(sender As Object, e As MouseButtonEventArgs)
        DragMove()

    End Sub

    Private Sub image_MouseLeftButtonDown(sender As Object, e As MouseButtonEventArgs) Handles image.MouseLeftButtonDown
        Close()

    End Sub

    Private Sub Window_Loaded(sender As Object, e As RoutedEventArgs)
        autoGenPasswords()
    End Sub

    Private Sub button_quit_Click(sender As Object, e As RoutedEventArgs) Handles button_quit.Click
        End

    End Sub
End Class
