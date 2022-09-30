using Common.SqlServerManagement;
using Microsoft.SqlServer.Management.Smo;
using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;

namespace MainApp.UserControls
{
    /// <summary>
    /// Interaction logic for GenerateModelsUserControl.xaml
    /// </summary>
    public partial class GenerateModelsUserControl : UserControl
    {
        public GenerateModelsUserControl()
        {
            InitializeComponent();
            cbxServerList.ItemsSource = SqlServerManagement.GetServerList();

        }
        /*private void TestMethod()
        {
            SqlServerHelpers sqlServerHelpers = new SqlServerHelpers();
        }*/

        private void cbxServerList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            string selectedServer = cbxServerList.SelectedItem as string;
            cbxDatabaseList.ItemsSource = SqlServerManagement.GetDatabaseList(selectedServer);
        }

        private void cbxDatabaseList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            string selectedServer = cbxServerList.SelectedItem as string;
            string selectedDatabase = cbxDatabaseList.SelectedItem as string;
            System.Diagnostics.Debug.WriteLine(SqlServerManagement.GetTableList(selectedServer, selectedDatabase)[0]);


            List<Table> tableNames = new List<Table>();
            int length = SqlServerManagement.GetTableList(selectedServer, selectedDatabase).Count;
            System.Diagnostics.Debug.WriteLine(length);
            for (int i = 0; i < length; i++)
            {
                tableNames.Add(new Table() { Generate = i + 1, Name = SqlServerManagement.GetTableList(selectedServer, selectedDatabase)[i] });
            }
            dgTableList.ItemsSource = tableNames;
        }
        public class Table
        {
            public int Generate { get; set; }

            public object Name { get; set; }
        }
    }
}
