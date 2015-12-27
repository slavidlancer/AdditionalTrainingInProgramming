<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form_Connect
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.Label_COM_port = New System.Windows.Forms.Label()
        Me.Label_baud_rate = New System.Windows.Forms.Label()
        Me.ComboBox_COM_port = New System.Windows.Forms.ComboBox()
        Me.ComboBox_baud_rate = New System.Windows.Forms.ComboBox()
        Me.Button_Connect = New System.Windows.Forms.Button()
        Me.Button_Cancel = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'Label_COM_port
        '
        Me.Label_COM_port.AutoSize = True
        Me.Label_COM_port.Location = New System.Drawing.Point(40, 34)
        Me.Label_COM_port.Name = "Label_COM_port"
        Me.Label_COM_port.Size = New System.Drawing.Size(88, 13)
        Me.Label_COM_port.TabIndex = 0
        Me.Label_COM_port.Text = "Select COM port:"
        '
        'Label_baud_rate
        '
        Me.Label_baud_rate.AutoSize = True
        Me.Label_baud_rate.Location = New System.Drawing.Point(281, 34)
        Me.Label_baud_rate.Name = "Label_baud_rate"
        Me.Label_baud_rate.Size = New System.Drawing.Size(88, 13)
        Me.Label_baud_rate.TabIndex = 1
        Me.Label_baud_rate.Text = "Select baud rate:"
        '
        'ComboBox_COM_port
        '
        Me.ComboBox_COM_port.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.ComboBox_COM_port.FormattingEnabled = True
        Me.ComboBox_COM_port.Location = New System.Drawing.Point(43, 60)
        Me.ComboBox_COM_port.Name = "ComboBox_COM_port"
        Me.ComboBox_COM_port.Size = New System.Drawing.Size(121, 21)
        Me.ComboBox_COM_port.Sorted = True
        Me.ComboBox_COM_port.TabIndex = 2
        '
        'ComboBox_baud_rate
        '
        Me.ComboBox_baud_rate.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.ComboBox_baud_rate.FormattingEnabled = True
        Me.ComboBox_baud_rate.Location = New System.Drawing.Point(284, 59)
        Me.ComboBox_baud_rate.Name = "ComboBox_baud_rate"
        Me.ComboBox_baud_rate.Size = New System.Drawing.Size(121, 21)
        Me.ComboBox_baud_rate.TabIndex = 3
        '
        'Button_Connect
        '
        Me.Button_Connect.Location = New System.Drawing.Point(135, 125)
        Me.Button_Connect.Name = "Button_Connect"
        Me.Button_Connect.Size = New System.Drawing.Size(75, 23)
        Me.Button_Connect.TabIndex = 4
        Me.Button_Connect.Text = "Connect"
        Me.Button_Connect.UseVisualStyleBackColor = True
        '
        'Button_Cancel
        '
        Me.Button_Cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel
        Me.Button_Cancel.Location = New System.Drawing.Point(234, 124)
        Me.Button_Cancel.Name = "Button_Cancel"
        Me.Button_Cancel.Size = New System.Drawing.Size(75, 23)
        Me.Button_Cancel.TabIndex = 5
        Me.Button_Cancel.Text = "Cancel"
        Me.Button_Cancel.UseVisualStyleBackColor = True
        '
        'Form_Connect
        '
        Me.AcceptButton = Me.Button_Connect
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.CancelButton = Me.Button_Cancel
        Me.ClientSize = New System.Drawing.Size(444, 174)
        Me.Controls.Add(Me.Button_Cancel)
        Me.Controls.Add(Me.Button_Connect)
        Me.Controls.Add(Me.ComboBox_baud_rate)
        Me.Controls.Add(Me.ComboBox_COM_port)
        Me.Controls.Add(Me.Label_baud_rate)
        Me.Controls.Add(Me.Label_COM_port)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.Name = "Form_Connect"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Connect to Arduino Uno"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label_COM_port As System.Windows.Forms.Label
    Friend WithEvents Label_baud_rate As System.Windows.Forms.Label
    Friend WithEvents ComboBox_COM_port As System.Windows.Forms.ComboBox
    Friend WithEvents ComboBox_baud_rate As System.Windows.Forms.ComboBox
    Friend WithEvents Button_Connect As System.Windows.Forms.Button
    Friend WithEvents Button_Cancel As System.Windows.Forms.Button
End Class
