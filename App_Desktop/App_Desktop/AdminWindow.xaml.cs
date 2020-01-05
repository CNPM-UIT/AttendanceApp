﻿using App_Desktop.ViewModels.Admin;
using App_Desktop.Views.Admin;
using System;
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
using App_Desktop.Model;

namespace App_Desktop
{
    /// <summary>
    /// Interaction logic for AdminWindow.xaml
    /// </summary>
    public partial class AdminWindow : Window
    {
        public AdminWindow()
        {
            InitializeComponent();
            Grid_QuanLi.Children.Add(new QuanLiSinhVien());
        }

        private void RadioButton_Checked_SinhVien(object sender, RoutedEventArgs e)
        {

            Grid_QuanLi.Children.Clear();
            Grid_QuanLi.Children.Add(new QuanLiSinhVien());
        }

        private void RadioButton_Checked_GiangVien(object sender, RoutedEventArgs e)
        {

            Grid_QuanLi.Children.Clear();
            Grid_QuanLi.Children.Add(new QuanLiGiangVien()
            { DataContext = new QuanLiGiangVienViewModel(new Model.UICallback())});
        }
        private void RadioButton_Checked_HocKy(object sender, RoutedEventArgs e)
        {

            Grid_QuanLi.Children.Clear();
            Grid_QuanLi.Children.Add(new QuanLiHocKy(){DataContext = new QuanLiHocKyViewModel(new UICallback())});
        }

        private void RadioButton_Checked_LopHoc(object sender, RoutedEventArgs e)
        {
            Grid_QuanLi.Children.Clear();
            Grid_QuanLi.Children.Add(new QuanLiLopHoc(){DataContext = new QuanLiLopHocViewModel(new UICallback())});
        }
    }
}
