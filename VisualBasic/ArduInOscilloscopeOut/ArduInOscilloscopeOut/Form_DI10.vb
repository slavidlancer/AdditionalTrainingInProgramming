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


Imports System.ComponentModel


Public Class Form_DI10
    Private WithEvents backgroundWorkerDI10 As BackgroundWorker = New BackgroundWorker
    Private flagOpen As Boolean = False

    Private Sub Form_DI10_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        flagOpen = True
        ChartDI10.Series(0).ChartType = DataVisualization.Charting.SeriesChartType.Line
        ChartDI10.ChartAreas(0).AxisX.IsMarginVisible = True

        ChartDI10.ChartAreas(0).AxisY.Title = "Digital value, [0/1 - LOW/HIGH]"

        ChartDI10.ChartAreas(0).AxisY.Minimum = -0.10
        ChartDI10.ChartAreas(0).AxisY.Maximum = 1.10

        ChartDI10.ChartAreas(0).AxisY.IntervalAutoMode = DataVisualization.Charting.IntervalAutoMode.FixedCount
        ChartDI10.ChartAreas(0).AxisY.Interval = 0.1

        Me.backgroundWorkerDI10.RunWorkerAsync()
    End Sub

    Private Sub RunWorkCompleted(ByVal sender As Object, e As RunWorkerCompletedEventArgs) Handles backgroundWorkerDI10.RunWorkerCompleted
        If Main_Form.flagLoop And flagOpen Then
            Try
                If ChartDI10.Series(0).Points.Count = 500 Then
                    ChartDI10.Series(0).Points.RemoveAt(0)
                End If

                ChartDI10.Series(0).Points.AddY(Convert.ToDouble(Main_Form.DPin10Value.Text))
            Catch ex As Exception
                MsgBox(ex.Message)

                Me.Close()
            End Try

            Me.backgroundWorkerDI10.RunWorkerAsync()
        End If
    End Sub

    Private Sub Form_DI10_FormClosed(sender As System.Object, e As System.Windows.Forms.FormClosedEventArgs) Handles MyBase.FormClosed
        flagOpen = False
    End Sub
End Class
