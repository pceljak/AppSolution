using Common.SqlServerManagement;
using Common.FileManagement;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using Microsoft.SqlServer.Management.Smo;
using System.Dynamic;

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
            string? selectedServer = cbxServerList.SelectedItem.ToString();
            cbxDatabaseList.ItemsSource = SqlServerManagement.GetDatabaseList(selectedServer);
        }

        private void cbcDatabaseList_SelectionChanged(object sender, SelectedCellsChangedEventArgs e)
        {
            string serverName = cbxServerList.SelectedItem.ToString();
            string databaseName = ((ComboBox)sender).SelectedValue.ToString();
            //string databaseName2 = cbxDatabaseList.SelectedItem.ToString();
            List<TableForExport> tablesForExport = new List<TableForExport>();
            foreach(TableForExport table in SqlServerManagement.GetTableList(serverName, databaseName))
            {
                var tableForExportTest = new TableForExport();
                tableForExportTest.Name = table.Name;
                tableForExportTest.Generate = false;
                var tableForExport = new TableForExport()
                {
                    Generate = false,
                    Name = table.Name,
                };
                tablesForExport.Add(tableForExport);
            }
            dgTableList.ItemsSource = tablesForExport;
            //object tableNames = GetTables();
            //object viewNames = GetViews();
            //dgTableList.ItemsSource = (System.Collections.IEnumerable)tableNames;
            //dgViewList.ItemsSource = (System.Collections.IEnumerable)viewNames;
        }

        //private List<TableForExport> GetTables() 
        //{
        //    string selectedServer = cbxServerList.SelectedItem as string;
        //    string selectedDatabase = cbxDatabaseList.SelectedItem as string;

        //    List<TableForExport> tableNames = new List<TableForExport>();
        //    int lengthTables = SqlServerManagement.GetTableList(selectedServer, selectedDatabase).Count;
        //    for (int i = 0; i < lengthTables; i++)
        //    {
        //        string currTableName = SqlServerManagement.GetTableList(selectedServer, selectedDatabase)[i].Name;
        //        if (!currTableName.Contains("Calendar") && !currTableName.Contains("RoleAuthorization"))
        //        {
        //            tableNames.Add(new TableForExport() { Generate = true, Name = currTableName });
        //        }
        //    }
        //    dgTableList.ItemsSource = tableNames;

        //    List<View> viewNames = new List<View>();
        //    int lengthViews = SqlServerManagement.GetViewlist(selectedServer, selectedDatabase).Count;
        //    for (int i = 0; i < lengthViews; i++)
        //    {
        //        string currViewName = SqlServerManagement.GetViewlist(selectedServer, selectedDatabase)[i].Name;
        //        if (currViewName.Contains("vArea"))
        //        {

        //            viewNames.Add(new View() { Generate = true, Name = SqlServerManagement.GetViewlist(selectedServer, selectedDatabase)[i].Name });
        //        }
        //    }
        //    dgViewList.ItemsSource = viewNames;
        //}

        public class TableForExport
        {
            public bool Generate { get; set; }

            public object Name { get; set; }
        }
        public class ViewForExport
        {
            public bool Generate { get; set; }

            public object Name { get; set; }
        }

        public class ModelForExport
        {
            public string Model { get; set; }
            public string FileName { get; set; }
        }
            
    }
}
