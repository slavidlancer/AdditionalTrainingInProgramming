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


Imports Sharpduino
Imports System.IO.Ports
Imports System.ComponentModel


Public Class Main_Form

    Public Arduino As Sharpduino.ArduinoUno
    Private WithEvents backgroundWorkerThread As BackgroundWorker = New BackgroundWorker
    Private WithEvents backgroundWorkerThreadCheck As BackgroundWorker = New BackgroundWorker
    Public flagLoop As Boolean = True
    Public flagCheckState As Boolean = False
    Public aPin0Val As Double
    Public aPin1Val As Double
    Public aPin2Val As Double
    Public aPin3Val As Double
    Public aPin4Val As Double
    Public aPin5Val As Double


    Private Sub ConnectToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles ConnectToolStripMenuItem.Click
        Form_Connect.ShowDialog()
    End Sub

    Private Sub DisconnectToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles DisconnectToolStripMenuItem.Click
        If Form_Connect.flagCD Then
            Try
                Arduino.Dispose()
            Catch exc As Exception
                'MsgBox(exc.Message)
            End Try

            Form_Connect.flagCD = False
            flagLoop = False
        End If

        Call Disconnect()
    End Sub

    Public Sub Disconnect()
        If Form_Connect.flagCD Then
            Try
                Arduino.Dispose()
            Catch exc As Exception
                'MsgBox(exc.Message)
            End Try

            Form_Connect.flagCD = False
            flagLoop = False
        End If

        ToolStripStatusLabel1.Text = "Status: Disconnected"
        ToolStripStatusLabel2.Text = "COM port: "
        ToolStripStatusLabel3.Text = "Baud rate: "
        ToolStripStatusLabel4.Text = "Firmata version: "
        ToolStripStatusLabel5.Text = "Tx: "
        ToolStripStatusLabel6.Text = "Rx: "

        ToolStripStatusLabel2.Enabled = False
        ToolStripStatusLabel3.Enabled = False
        ToolStripStatusLabel4.Enabled = False
        ToolStripStatusLabel5.Enabled = False
        ToolStripStatusLabel6.Enabled = False

        ConnectToolStripMenuItem.Enabled = True
        DisconnectToolStripMenuItem.Enabled = False

        VisualizationAIToolStripMenuItem.Enabled = False
        AnalogInput1ToolStripMenuItem.Enabled = False
        AnalogInput2ToolStripMenuItem.Enabled = False
        AnalogInput3ToolStripMenuItem.Enabled = False
        AnalogInput4ToolStripMenuItem.Enabled = False
        AnalogInput5ToolStripMenuItem.Enabled = False
        AnalogInput0ToolStripMenuItem.Enabled = False

        VisualizationDIToolStripMenuItem.Enabled = False
        DigitalInput0ToolStripMenuItem.Enabled = False
        DigitalInput1ToolStripMenuItem.Enabled = False
        DigitalInput2ToolStripMenuItem.Enabled = False
        DigitalInput3ToolStripMenuItem.Enabled = False
        DigitalInput4ToolStripMenuItem.Enabled = False
        DigitalInput5ToolStripMenuItem.Enabled = False
        DigitalInput6ToolStripMenuItem.Enabled = False
        DigitalInput7ToolStripMenuItem.Enabled = False
        DigitalInput8ToolStripMenuItem.Enabled = False
        DigitalInput9ToolStripMenuItem.Enabled = False
        DigitalInput10ToolStripMenuItem.Enabled = False
        DigitalInput11ToolStripMenuItem.Enabled = False
        DigitalInput12ToolStripMenuItem.Enabled = False
        DigitalInput13ToolStripMenuItem.Enabled = False

        APin0Value.Text = "####"
        APin0ValueV.Text = "[#### V]"
        APin1Value.Text = "####"
        APin1ValueV.Text = "[#### V]"
        APin2Value.Text = "####"
        APin2ValueV.Text = "[#### V]"
        APin3Value.Text = "####"
        APin3ValueV.Text = "[#### V]"
        APin4Value.Text = "####"
        APin4ValueV.Text = "[#### V]"
        APin5Value.Text = "####"
        APin5ValueV.Text = "[#### V]"

        DPin0Value.Text = "#"
        DPin1Value.Text = "#"
        DPin2Value.Text = "#"
        DPin3Value.Text = "#"
        DPin4Value.Text = "#"
        DPin5Value.Text = "#"
        DPin6Value.Text = "#"
        DPin7Value.Text = "#"
        DPin8Value.Text = "#"
        DPin9Value.Text = "#"
        DPin10Value.Text = "#"
        DPin11Value.Text = "#"
        DPin12Value.Text = "#"
        DPin13Value.Text = "#"

        GroupBoxAP.Enabled = False
        GroupBoxDP.Enabled = False
        GroupBox_CheckBox.Enabled = False

        Form_AI0.Close()
        Form_AI1.Close()
        Form_AI2.Close()
        Form_AI3.Close()
        Form_AI4.Close()
        Form_AI5.Close()
        Form_DI0.Close()
        Form_DI1.Close()
        Form_DI2.Close()
        Form_DI3.Close()
        Form_DI4.Close()
        Form_DI5.Close()
        Form_DI6.Close()
        Form_DI7.Close()
        Form_DI8.Close()
        Form_DI9.Close()
        Form_DI10.Close()
        Form_DI11.Close()
        Form_DI12.Close()
        Form_DI13.Close()
    End Sub

    Private Sub AnalogInput0ToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles AnalogInput0ToolStripMenuItem.Click
        Form_AI0.Show()
    End Sub

    Private Sub AnalogInput1ToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles AnalogInput1ToolStripMenuItem.Click
        Form_AI1.Show()
    End Sub

    Private Sub AnalogInput2ToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles AnalogInput2ToolStripMenuItem.Click
        Form_AI2.Show()
    End Sub

    Private Sub AnalogInput3ToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles AnalogInput3ToolStripMenuItem.Click
        Form_AI3.Show()
    End Sub

    Private Sub AnalogInput4ToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles AnalogInput4ToolStripMenuItem.Click
        Form_AI4.Show()
    End Sub

    Private Sub AnalogInput5ToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles AnalogInput5ToolStripMenuItem.Click
        Form_AI5.Show()
    End Sub

    Private Sub DigitalInput0ToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles DigitalInput0ToolStripMenuItem.Click
        Form_DI0.Show()
    End Sub

    Private Sub DigitalInput1ToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles DigitalInput1ToolStripMenuItem.Click
        Form_DI1.Show()
    End Sub

    Private Sub DigitalInput2ToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles DigitalInput2ToolStripMenuItem.Click
        Form_DI2.Show()
    End Sub

    Private Sub DigitalInput3ToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles DigitalInput3ToolStripMenuItem.Click
        Form_DI3.Show()
    End Sub

    Private Sub DigitalInput4ToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles DigitalInput4ToolStripMenuItem.Click
        Form_DI4.Show()
    End Sub

    Private Sub DigitalInput5ToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles DigitalInput5ToolStripMenuItem.Click
        Form_DI5.Show()
    End Sub

    Private Sub DigitalInput6ToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles DigitalInput6ToolStripMenuItem.Click
        Form_DI6.Show()
    End Sub

    Private Sub DigitalInput7ToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles DigitalInput7ToolStripMenuItem.Click
        Form_DI7.Show()
    End Sub

    Private Sub DigitalInput8ToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles DigitalInput8ToolStripMenuItem.Click
        Form_DI8.Show()
    End Sub

    Private Sub DigitalInput9ToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles DigitalInput9ToolStripMenuItem.Click
        Form_DI9.Show()
    End Sub

    Private Sub DigitalInput10ToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles DigitalInput10ToolStripMenuItem.Click
        Form_DI10.Show()
    End Sub

    Private Sub DigitalInput11ToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles DigitalInput11ToolStripMenuItem.Click
        Form_DI11.Show()
    End Sub

    Private Sub DigitalInput12ToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles DigitalInput12ToolStripMenuItem.Click
        Form_DI12.Show()
    End Sub

    Private Sub DigitalInput13ToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles DigitalInput13ToolStripMenuItem.Click
        Form_DI13.Show()
    End Sub

    Private Sub AboutToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles AboutToolStripMenuItem.Click
        About.ShowDialog()
    End Sub

    Private Sub ExitToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles ExitToolStripMenuItem.Click
        If Form_Connect.flagCD Then
            Try
                Arduino.Dispose()
            Catch ex As Exception
                'MsgBox(ex.Message)
            End Try

            Form_Connect.flagCD = False
            flagLoop = False
        End If

        Me.Close()

        Process.GetCurrentProcess.Kill()
    End Sub

    Private Sub Main_Form_FormClosed(sender As System.Object, e As System.Windows.Forms.FormClosedEventArgs) Handles MyBase.FormClosed
        If Form_Connect.flagCD Then
            Try
                Arduino.Dispose()
            Catch ex As Exception
                'MsgBox(ex.Message)
            End Try

            Form_Connect.flagCD = False
            flagLoop = False
        End If

        Process.GetCurrentProcess.Kill()
    End Sub

    Public Sub BackgroundWorkerStart()
        Me.backgroundWorkerThread.RunWorkerAsync()
        Me.backgroundWorkerThreadCheck.RunWorkerAsync()
    End Sub

    Private Sub RunWorkCompleted(ByVal sender As Object, e As RunWorkerCompletedEventArgs) Handles backgroundWorkerThread.RunWorkerCompleted
        Try
            Me.Arduino.SetPinMode(Constants.ArduinoUnoPins.A0, Constants.PinModes.Analog)
        Catch ex As Exception
            MsgBox("The Arduino is disconnected.", MsgBoxStyle.Critical)
            'MsgBox(ex.Message)

            Call Me.Disconnect()

            System.Threading.Thread.Sleep(1000)

            flagLoop = False
        End Try

        If flagLoop Then
            Me.backgroundWorkerThread.RunWorkerAsync()
        End If
    End Sub

    Private Sub RunWorkCompletedCheck(ByVal sender As Object, e As RunWorkerCompletedEventArgs) Handles backgroundWorkerThreadCheck.RunWorkerCompleted
        Call CheckPinsReport_Visualization()

        If flagLoop Then
            Me.backgroundWorkerThreadCheck.RunWorkerAsync()
        End If
    End Sub

    Private Sub CheckPinsReport_Visualization()
        If flagLoop Then
            ToolStripStatusLabel5.Text = "Tx: " + Arduino.ReadAnalog(Constants.ArduinoUnoPins.D1_TX).ToString()
            ToolStripStatusLabel6.Text = "Rx: " + Arduino.ReadAnalog(Constants.ArduinoUnoPins.D0_RX).ToString()

            If CheckBox_DisplayInVolts.CheckState = CheckState.Checked And Not flagCheckState Then
                flagCheckState = True

                Form_AI0.Close()
                Form_AI1.Close()
                Form_AI2.Close()
                Form_AI3.Close()
                Form_AI4.Close()
                Form_AI5.Close()
            End If

            If CheckBox_DisplayInVolts.CheckState = CheckState.Unchecked And flagCheckState Then
                flagCheckState = False

                Form_AI0.Close()
                Form_AI1.Close()
                Form_AI2.Close()
                Form_AI3.Close()
                Form_AI4.Close()
                Form_AI5.Close()
            End If

            APin0Value.Text = Arduino.ReadAnalog(Constants.ArduinoUnoAnalogPins.A0)

            If CheckBox_DisplayInVolts.CheckState = CheckState.Checked Then
                aPin0Val = APin0Value.Text * (5 / 1024)
                Dim aPin0Val1 As Int32 = Math.Truncate(aPin0Val)
                Dim aPin0Val2 As Int32 = (aPin0Val - aPin0Val1) * 100

                If aPin0Val2 = 100 Then
                    aPin0Val1 = aPin0Val1 + 1
                    aPin0Val2 = 0
                End If

                Dim aPin0V As String = "[" + aPin0Val1.ToString() + "." + aPin0Val2.ToString() + " V]"

                APin0ValueV.Text = aPin0V
            Else
                APin0ValueV.Text = "[#### V]"
            End If

            APin1Value.Text = Arduino.ReadAnalog(Constants.ArduinoUnoAnalogPins.A1)

            If CheckBox_DisplayInVolts.CheckState = CheckState.Checked Then
                aPin1Val = APin1Value.Text * (5 / 1024)
                Dim aPin1Val1 As Int32 = Math.Truncate(aPin1Val)
                Dim aPin1Val2 As Int32 = (aPin1Val - aPin1Val1) * 100

                If aPin1Val2 = 100 Then
                    aPin1Val1 = aPin1Val1 + 1
                    aPin1Val2 = 0
                End If

                Dim aPin1V As String = "[" + aPin1Val1.ToString() + "." + aPin1Val2.ToString() + " V]"

                APin1ValueV.Text = aPin1V
            Else
                APin1ValueV.Text = "[#### V]"
            End If

            APin2Value.Text = Arduino.ReadAnalog(Constants.ArduinoUnoAnalogPins.A2)

            If CheckBox_DisplayInVolts.CheckState = CheckState.Checked Then
                aPin2Val = APin2Value.Text * (5 / 1024)
                Dim aPin2Val1 As Int32 = Math.Truncate(aPin2Val)
                Dim aPin2Val2 As Int32 = (aPin2Val - aPin2Val1) * 100

                If aPin2Val2 = 100 Then
                    aPin2Val1 = aPin2Val1 + 1
                    aPin2Val2 = 0
                End If

                Dim aPin2V As String = "[" + aPin2Val1.ToString() + "." + aPin2Val2.ToString() + " V]"

                APin2ValueV.Text = aPin2V
            Else
                APin2ValueV.Text = "[#### V]"
            End If

            APin3Value.Text = Arduino.ReadAnalog(Constants.ArduinoUnoAnalogPins.A3)

            If CheckBox_DisplayInVolts.CheckState = CheckState.Checked Then
                aPin3Val = APin3Value.Text * (5 / 1024)
                Dim aPin3Val1 As Int32 = Math.Truncate(aPin3Val)
                Dim aPin3Val2 As Int32 = (aPin3Val - aPin3Val1) * 100

                If aPin3Val2 = 100 Then
                    aPin3Val1 = aPin3Val1 + 1
                    aPin3Val2 = 0
                End If

                Dim aPin3V As String = "[" + aPin3Val1.ToString() + "." + aPin3Val2.ToString() + " V]"

                APin3ValueV.Text = aPin3V
            Else
                APin3ValueV.Text = "[#### V]"
            End If

            APin4Value.Text = Arduino.ReadAnalog(Constants.ArduinoUnoAnalogPins.A4)

            If CheckBox_DisplayInVolts.CheckState = CheckState.Checked Then
                aPin4Val = APin4Value.Text * (5 / 1024)
                Dim aPin4Val1 As Int32 = Math.Truncate(aPin4Val)
                Dim aPin4Val2 As Int32 = (aPin4Val - aPin4Val1) * 100

                If aPin4Val2 = 100 Then
                    aPin4Val1 = aPin4Val1 + 1
                    aPin4Val2 = 0
                End If

                Dim aPin4V As String = "[" + aPin4Val1.ToString() + "." + aPin4Val2.ToString() + " V]"

                APin4ValueV.Text = aPin4V
            Else
                APin4ValueV.Text = "[#### V]"
            End If

            APin5Value.Text = Arduino.ReadAnalog(Constants.ArduinoUnoAnalogPins.A5)

            If CheckBox_DisplayInVolts.CheckState = CheckState.Checked Then
                aPin5Val = APin5Value.Text * (5 / 1024)
                Dim aPin5Val1 As Int32 = Math.Truncate(aPin5Val)
                Dim aPin5Val2 As Int32 = (aPin5Val - aPin5Val1) * 100

                If aPin5Val2 = 100 Then
                    aPin5Val1 = aPin5Val1 + 1
                    aPin5Val2 = 0
                End If

                Dim aPin5V As String = "[" + aPin5Val1.ToString() + "." + aPin5Val2.ToString() + " V]"

                APin5ValueV.Text = aPin5V
            Else
                APin5ValueV.Text = "[#### V]"
            End If

            DPin0Value.Text = Arduino.ReadDigital(Constants.ArduinoUnoPins.D0_RX)
            DPin1Value.Text = Arduino.ReadDigital(Constants.ArduinoUnoPins.D1_TX)
            DPin2Value.Text = Arduino.ReadDigital(Constants.ArduinoUnoPins.D2)
            DPin3Value.Text = Arduino.ReadDigital(Constants.ArduinoUnoPins.D3_PWM)
            DPin4Value.Text = Arduino.ReadDigital(Constants.ArduinoUnoPins.D4)
            DPin5Value.Text = Arduino.ReadDigital(Constants.ArduinoUnoPins.D5_PWM)
            DPin6Value.Text = Arduino.ReadDigital(Constants.ArduinoUnoPins.D6_PWM)
            DPin7Value.Text = Arduino.ReadDigital(Constants.ArduinoUnoPins.D7)
            DPin8Value.Text = Arduino.ReadDigital(Constants.ArduinoUnoPins.D8)
            DPin9Value.Text = Arduino.ReadDigital(Constants.ArduinoUnoPins.D9_PWM)
            DPin10Value.Text = Arduino.ReadDigital(Constants.ArduinoUnoPins.D10_PWM)
            DPin11Value.Text = Arduino.ReadDigital(Constants.ArduinoUnoPins.D11_PWM)
            DPin12Value.Text = Arduino.ReadDigital(Constants.ArduinoUnoPins.D12)
            DPin13Value.Text = Arduino.ReadDigital(Constants.ArduinoUnoPins.D13)
        End If
    End Sub
End Class
