<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form_DI1
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
        Dim ChartArea1 As System.Windows.Forms.DataVisualization.Charting.ChartArea = New System.Windows.Forms.DataVisualization.Charting.ChartArea()
        Dim Series1 As System.Windows.Forms.DataVisualization.Charting.Series = New System.Windows.Forms.DataVisualization.Charting.Series()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form_DI1))
        Me.ChartDI1 = New System.Windows.Forms.DataVisualization.Charting.Chart()
        CType(Me.ChartDI1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'ChartDI1
        '
        Me.ChartDI1.BackColor = System.Drawing.Color.Black
        Me.ChartDI1.BorderlineDashStyle = System.Windows.Forms.DataVisualization.Charting.ChartDashStyle.Solid
        ChartArea1.AxisX.Interval = 1000.0R
        ChartArea1.AxisX.LabelStyle.Enabled = False
        ChartArea1.AxisX.LabelStyle.ForeColor = System.Drawing.Color.White
        ChartArea1.AxisX.LineColor = System.Drawing.Color.White
        ChartArea1.AxisX.MajorGrid.LineColor = System.Drawing.Color.White
        ChartArea1.AxisX.MajorTickMark.LineColor = System.Drawing.Color.White
        ChartArea1.AxisX.MinorGrid.LineColor = System.Drawing.Color.White
        ChartArea1.AxisX.MinorTickMark.LineColor = System.Drawing.Color.White
        ChartArea1.AxisX.ScaleBreakStyle.LineColor = System.Drawing.Color.White
        ChartArea1.AxisX2.LabelStyle.ForeColor = System.Drawing.Color.White
        ChartArea1.AxisX2.LineColor = System.Drawing.Color.White
        ChartArea1.AxisX2.MajorGrid.LineColor = System.Drawing.Color.White
        ChartArea1.AxisX2.MajorTickMark.LineColor = System.Drawing.Color.White
        ChartArea1.AxisX2.MinorGrid.LineColor = System.Drawing.Color.White
        ChartArea1.AxisX2.MinorTickMark.LineColor = System.Drawing.Color.White
        ChartArea1.AxisX2.ScaleBreakStyle.LineColor = System.Drawing.Color.White
        ChartArea1.AxisX2.TitleForeColor = System.Drawing.Color.White
        ChartArea1.AxisY.IsLabelAutoFit = False
        ChartArea1.AxisY.LabelStyle.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(204, Byte))
        ChartArea1.AxisY.LabelStyle.ForeColor = System.Drawing.Color.White
        ChartArea1.AxisY.LineColor = System.Drawing.Color.White
        ChartArea1.AxisY.MajorGrid.LineColor = System.Drawing.Color.White
        ChartArea1.AxisY.MajorTickMark.LineColor = System.Drawing.Color.White
        ChartArea1.AxisY.MinorGrid.LineColor = System.Drawing.Color.White
        ChartArea1.AxisY.MinorTickMark.LineColor = System.Drawing.Color.White
        ChartArea1.AxisY.ScaleBreakStyle.LineColor = System.Drawing.Color.White
        ChartArea1.AxisY.TitleFont = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(204, Byte))
        ChartArea1.AxisY.TitleForeColor = System.Drawing.Color.White
        ChartArea1.AxisY2.LabelStyle.ForeColor = System.Drawing.Color.White
        ChartArea1.AxisY2.LineColor = System.Drawing.Color.White
        ChartArea1.AxisY2.MajorGrid.LineColor = System.Drawing.Color.White
        ChartArea1.AxisY2.MajorTickMark.LineColor = System.Drawing.Color.White
        ChartArea1.AxisY2.MinorGrid.LineColor = System.Drawing.Color.White
        ChartArea1.AxisY2.MinorTickMark.LineColor = System.Drawing.Color.White
        ChartArea1.AxisY2.ScaleBreakStyle.LineColor = System.Drawing.Color.White
        ChartArea1.AxisY2.TitleForeColor = System.Drawing.Color.White
        ChartArea1.BackColor = System.Drawing.Color.Black
        ChartArea1.BorderColor = System.Drawing.Color.White
        ChartArea1.Name = "ChartArea1"
        Me.ChartDI1.ChartAreas.Add(ChartArea1)
        Me.ChartDI1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.ChartDI1.Location = New System.Drawing.Point(0, 0)
        Me.ChartDI1.Name = "ChartDI1"
        Series1.BorderWidth = 3
        Series1.ChartArea = "ChartArea1"
        Series1.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line
        Series1.Color = System.Drawing.Color.Lime
        Series1.Name = "Series1"
        Me.ChartDI1.Series.Add(Series1)
        Me.ChartDI1.Size = New System.Drawing.Size(592, 366)
        Me.ChartDI1.TabIndex = 2
        '
        'Form_DI1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(592, 366)
        Me.Controls.Add(Me.ChartDI1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MinimumSize = New System.Drawing.Size(300, 200)
        Me.Name = "Form_DI1"
        Me.Text = "Graph of Digital Input 1 - DI1"
        CType(Me.ChartDI1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents ChartDI1 As System.Windows.Forms.DataVisualization.Charting.Chart
End Class
