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


Imports System.IO.Ports
Imports System.ComponentModel


Public Class Form_Connect

    Public Shared flagCD As Boolean = False

    Private Sub Form_Connect_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        Dim portNames As String() = SerialPort.GetPortNames()
        Dim baudRate As String() = New String() {"300", "1200", "2400", "4800", "9600", "14400", "19200", "28800", "38400", "57600", "115200"}

        ComboBox_COM_port.Items.Clear()

        For i As Int32 = 0 To portNames.Length - 1
            ComboBox_COM_port.Items.Add(portNames(i))
        Next

        ComboBox_baud_rate.Items.Clear()

        For i As Int32 = 0 To baudRate.Length - 1
            ComboBox_baud_rate.Items.Add(baudRate(i))
        Next

        ComboBox_baud_rate.SelectedItem = "57600"
    End Sub

    Private Sub ComboBox_COM_port_DropDown(sender As System.Object, e As System.EventArgs) Handles ComboBox_COM_port.DropDown
        Dim portNames As String() = SerialPort.GetPortNames()

        ComboBox_COM_port.Items.Clear()

        For i As Int32 = 0 To portNames.Length - 1
            ComboBox_COM_port.Items.Add(portNames(i))
        Next
    End Sub

    Private Sub Button_Connect_Click(sender As System.Object, e As System.EventArgs) Handles Button_Connect.Click
        If Not ComboBox_baud_rate.SelectedItem.ToString.Equals("57600") Then
            ComboBox_baud_rate.SelectedItem = "57600"

            MsgBox("Baud rate 57600 is used. The other baud rates are not yet supported.", MsgBoxStyle.Information)
        End If
        If ComboBox_COM_port.SelectedIndex > -1 And ComboBox_baud_rate.SelectedIndex > -1 Then
            Try
                Main_Form.Arduino = New Sharpduino.ArduinoUno(ComboBox_COM_port.SelectedItem, ComboBox_baud_rate.SelectedItem)
                flagCD = True
            Catch ex As Exception
                MsgBox(ex.Message, MsgBoxStyle.Critical)

                Dim exMsg As String = ex.Message.ToString()

                If exMsg.Contains(ComboBox_COM_port.SelectedItem.ToString()) Then
                    MsgBox("Error: The application has to be restarted. Also try to plug again the Arduino USB cable.", MsgBoxStyle.Critical)

                    Main_Form.ExitToolStripMenuItem.PerformClick()
                End If
            End Try

            Me.Enabled = False

            System.Threading.Thread.Sleep(2000)

            Me.Enabled = True

            If Main_Form.Arduino.IsInitialized() Then
                Main_Form.ToolStripStatusLabel1.Text = "Status: Connected"
                Main_Form.ToolStripStatusLabel2.Text = "COM port: " + ComboBox_COM_port.SelectedItem
                Main_Form.ToolStripStatusLabel3.Text = "Baud rate: " + ComboBox_baud_rate.SelectedItem
                Main_Form.ToolStripStatusLabel4.Text = "Firmata version: " + Main_Form.Arduino.ReturnVersion()
                Main_Form.ToolStripStatusLabel5.Text = "Tx: " + Main_Form.Arduino.ReadAnalog(Sharpduino.Constants.ArduinoUnoPins.D1_TX).ToString()
                Main_Form.ToolStripStatusLabel6.Text = "Rx: " + Main_Form.Arduino.ReadDigital(Sharpduino.Constants.ArduinoUnoPins.D0_RX).ToString()

                Main_Form.ToolStripStatusLabel2.Enabled = True
                Main_Form.ToolStripStatusLabel3.Enabled = True
                Main_Form.ToolStripStatusLabel4.Enabled = True
                Main_Form.ToolStripStatusLabel5.Enabled = True
                Main_Form.ToolStripStatusLabel6.Enabled = True

                Main_Form.ConnectToolStripMenuItem.Enabled = False
                Main_Form.DisconnectToolStripMenuItem.Enabled = True
                Main_Form.VisualizationAIToolStripMenuItem.Enabled = True
                Main_Form.AnalogInput0ToolStripMenuItem.Enabled = True
                Main_Form.AnalogInput1ToolStripMenuItem.Enabled = True
                Main_Form.AnalogInput2ToolStripMenuItem.Enabled = True
                Main_Form.AnalogInput3ToolStripMenuItem.Enabled = True
                Main_Form.AnalogInput4ToolStripMenuItem.Enabled = True
                Main_Form.AnalogInput5ToolStripMenuItem.Enabled = True

                Main_Form.VisualizationDIToolStripMenuItem.Enabled = True
                Main_Form.DigitalInput0ToolStripMenuItem.Enabled = True
                Main_Form.DigitalInput1ToolStripMenuItem.Enabled = True
                Main_Form.DigitalInput2ToolStripMenuItem.Enabled = True
                Main_Form.DigitalInput3ToolStripMenuItem.Enabled = True
                Main_Form.DigitalInput4ToolStripMenuItem.Enabled = True
                Main_Form.DigitalInput5ToolStripMenuItem.Enabled = True
                Main_Form.DigitalInput6ToolStripMenuItem.Enabled = True
                Main_Form.DigitalInput7ToolStripMenuItem.Enabled = True
                Main_Form.DigitalInput8ToolStripMenuItem.Enabled = True
                Main_Form.DigitalInput9ToolStripMenuItem.Enabled = True
                Main_Form.DigitalInput10ToolStripMenuItem.Enabled = True
                Main_Form.DigitalInput11ToolStripMenuItem.Enabled = True
                Main_Form.DigitalInput12ToolStripMenuItem.Enabled = True
                Main_Form.DigitalInput13ToolStripMenuItem.Enabled = True

                Main_Form.GroupBoxAP.Enabled = True
                Main_Form.GroupBoxDP.Enabled = True
                Main_Form.GroupBox_CheckBox.Enabled = True

                Main_Form.Arduino.SetPinMode(Sharpduino.Constants.ArduinoUnoPins.A0, Sharpduino.Constants.PinModes.Analog)
                Main_Form.Arduino.SetPinMode(Sharpduino.Constants.ArduinoUnoPins.A1, Sharpduino.Constants.PinModes.Analog)
                Main_Form.Arduino.SetPinMode(Sharpduino.Constants.ArduinoUnoPins.A2, Sharpduino.Constants.PinModes.Analog)
                Main_Form.Arduino.SetPinMode(Sharpduino.Constants.ArduinoUnoPins.A3, Sharpduino.Constants.PinModes.Analog)
                Main_Form.Arduino.SetPinMode(Sharpduino.Constants.ArduinoUnoPins.A4, Sharpduino.Constants.PinModes.Analog)
                Main_Form.Arduino.SetPinMode(Sharpduino.Constants.ArduinoUnoPins.A5, Sharpduino.Constants.PinModes.Analog)

                Main_Form.Arduino.SetPinMode(Sharpduino.Constants.ArduinoUnoPins.D2, Sharpduino.Constants.PinModes.Input)
                Main_Form.Arduino.SetPinMode(Sharpduino.Constants.ArduinoUnoPins.D3_PWM, Sharpduino.Constants.PinModes.Input)
                Main_Form.Arduino.SetPinMode(Sharpduino.Constants.ArduinoUnoPins.D4, Sharpduino.Constants.PinModes.Input)
                Main_Form.Arduino.SetPinMode(Sharpduino.Constants.ArduinoUnoPins.D5_PWM, Sharpduino.Constants.PinModes.Input)
                Main_Form.Arduino.SetPinMode(Sharpduino.Constants.ArduinoUnoPins.D6_PWM, Sharpduino.Constants.PinModes.Input)
                Main_Form.Arduino.SetPinMode(Sharpduino.Constants.ArduinoUnoPins.D7, Sharpduino.Constants.PinModes.Input)
                Main_Form.Arduino.SetPinMode(Sharpduino.Constants.ArduinoUnoPins.D8, Sharpduino.Constants.PinModes.Input)
                Main_Form.Arduino.SetPinMode(Sharpduino.Constants.ArduinoUnoPins.D9_PWM, Sharpduino.Constants.PinModes.Input)
                Main_Form.Arduino.SetPinMode(Sharpduino.Constants.ArduinoUnoPins.D10_PWM, Sharpduino.Constants.PinModes.Input)
                Main_Form.Arduino.SetPinMode(Sharpduino.Constants.ArduinoUnoPins.D11_PWM, Sharpduino.Constants.PinModes.Input)
                Main_Form.Arduino.SetPinMode(Sharpduino.Constants.ArduinoUnoPins.D12, Sharpduino.Constants.PinModes.Input)
                Main_Form.Arduino.SetPinMode(Sharpduino.Constants.ArduinoUnoPins.D13, Sharpduino.Constants.PinModes.Input)

                System.Threading.Thread.Sleep(2000)

                Me.Close()

                Main_Form.flagLoop = True

                Call Main_Form.BackgroundWorkerStart()
            Else
                MsgBox("The connection is not initialized.", MsgBoxStyle.Exclamation)
            End If
        Else
            MsgBox("Please select a COM port and an appropriate baud rate.", MsgBoxStyle.Information)
        End If
    End Sub

    Private Sub Cancel_Click(sender As System.Object, e As System.EventArgs) Handles Button_Cancel.Click
        Me.Close()
    End Sub
End Class