'Graphical interface for visualization of Arduino Uno's analog/digital I/O.
'Copyright (C) 2012  Slavi Dimitrov
'
'Using the library of sharpduino 0.2a with little modifications,
'(A .NET library for controlling an Arduino through the Firmata protocol, http://code.google.com/p/sharpduino) by
'Copyright (c) 2012  Tasos Valsamidis (http://www.devartia.com)
'
'This program is free software: you can redistribute it and/or modify
'it under the terms of the GNU General Public License as published by
'the Free Software Foundation, either version 3 of the License, or
'(at your option) any later version.
'
'This program is distributed in the hope that it will be useful,
'but WITHOUT ANY WARRANTY; without even the implied warranty of
'MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
'GNU General Public License for more details.
'
'You should have received a copy of the GNU General Public License
'along with this program.  If not, see <http://www.gnu.org/licenses/>.


Public NotInheritable Class About

    Private Sub AboutBox1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        ' Set the title of the form.
        Dim ApplicationTitle As String
        Dim License = "Using the library of sharpduino 0.2a with little modifications," + Environment.NewLine +
            "(A .NET library for controlling an Arduino through the Firmata protocol, http://code.google.com/p/sharpduino) by" + Environment.NewLine +
            "Copyright (c) 2012  Tasos Valsamidis (http://www.devartia.com)" + Environment.NewLine + Environment.NewLine +
            "This program is free software: you can redistribute it and/or modify" + Environment.NewLine +
            "it under the terms of the GNU General Public License as published by" + Environment.NewLine +
            "the Free Software Foundation, either version 3 of the License, or" + Environment.NewLine +
            "(at your option) any later version." + Environment.NewLine + Environment.NewLine +
            "This program is distributed in the hope that it will be useful," + Environment.NewLine +
            "but WITHOUT ANY WARRANTY; without even the implied warranty of" + Environment.NewLine +
            "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the" + Environment.NewLine +
            "GNU General Public License for more details." + Environment.NewLine + Environment.NewLine +
            "You should have received a copy of the GNU General Public License" + Environment.NewLine +
            "along with this program.  If not, see <http://www.gnu.org/licenses/>."
        If My.Application.Info.Title <> "" Then
            ApplicationTitle = My.Application.Info.Title
        Else
            ApplicationTitle = System.IO.Path.GetFileNameWithoutExtension(My.Application.Info.AssemblyName)
        End If
        Me.Text = String.Format("About {0}", ApplicationTitle)
        ' Initialize all of the text displayed on the About Box.
        ' TODO: Customize the application's assembly information in the "Application" pane of the project 
        '    properties dialog (under the "Project" menu).
        Me.LabelProductName.Text = My.Application.Info.ProductName
        Me.LabelVersion.Text = String.Format("Version {0}", My.Application.Info.Version.ToString)
        Me.LabelCopyright.Text = My.Application.Info.Copyright
        Me.TextBoxDescription.Text = My.Application.Info.ProductName + " - " + My.Application.Info.Description + "." + Environment.NewLine + Environment.NewLine + License
    End Sub

    Private Sub OKButton_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OKButton.Click
        Me.Close()
    End Sub

End Class
