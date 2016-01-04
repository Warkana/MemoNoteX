﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace MemoNote.View
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainNoteWindow : Window
    {
        public MainNoteWindow()
        {
            InitializeComponent();            
        }

        private void Window_MouseMove(object sender, MouseEventArgs e)
        {
            Point pWindow = Mouse.GetPosition(MainWindow);
            Point pCanvas = Mouse.GetPosition(myCanvas);
            temp.Text = Convert.ToString(pWindow);
            temp2.Text = Convert.ToString(pCanvas);
            temp2.Text = myCanvas.TranslatePoint(new Point(0, 0), MainWindow).ToString();
        }
    }
}
