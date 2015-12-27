﻿'Graphical interface for visualization of Arduino Uno's analog/digital I/O.
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


Public Class Form_AI2
    Private WithEvents backgroundWorkerAI2 As BackgroundWorker = New BackgroundWorker
    Private flagOpen As Boolean = False

    Private Sub Form_AI2_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        flagOpen = True
        ChartAI2.Series(0).ChartType = DataVisualization.Charting.SeriesChartType.Line
        ChartAI2.ChartAreas(0).AxisX.IsMarginVisible = True

        If Main_Form.CheckBox_DisplayInVolts.Checked Then
            ChartAI2.ChartAreas(0).AxisY.Title = "Voltage U, [V]"

            ChartAI2.ChartAreas(0).AxisY.Minimum = 0
            ChartAI2.ChartAreas(0).AxisY.Maximum = 5.5

            ChartAI2.ChartAreas(0).AxisY.IntervalAutoMode = DataVisualization.Charting.IntervalAutoMode.VariableCount
        Else
            ChartAI2.ChartAreas(0).AxisY.Title = "Analog value, [Bit]"

            ChartAI2.ChartAreas(0).AxisY.Minimum = 0
            ChartAI2.ChartAreas(0).AxisY.Maximum = 1100

            ChartAI2.ChartAreas(0).AxisY.IntervalAutoMode = DataVisualization.Charting.IntervalAutoMode.VariableCount
        End If

        Me.backgroundWorkerAI2.RunWorkerAsync()
    End Sub

    Private Sub RunWorkCompleted(ByVal sender As Object, e As RunWorkerCompletedEventArgs) Handles backgroundWorkerAI2.RunWorkerCompleted
        If Main_Form.flagLoop And flagOpen Then
            Try
                If ChartAI2.Series(0).Points.Count = 500 Then
                    ChartAI2.Series(0).Points.RemoveAt(0)
                End If

                If Main_Form.CheckBox_DisplayInVolts.Checked Then
                    ChartAI2.Series(0).Points.AddY(Main_Form.aPin2Val)
                Else
                    ChartAI2.Series(0).Points.AddY(Convert.ToDouble(Main_Form.APin2Value.Text))
                End If
            Catch ex As Exception
                MsgBox(ex.Message)

                Me.Close()
            End Try

            Me.backgroundWorkerAI2.RunWorkerAsync()
        End If
    End Sub

    Private Sub Form_AI2_FormClosed(sender As System.Object, e As System.Windows.Forms.FormClosedEventArgs) Handles MyBase.FormClosed
        flagOpen = False
    End Sub
End Class