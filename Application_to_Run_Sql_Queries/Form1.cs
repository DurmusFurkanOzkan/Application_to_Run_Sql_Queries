using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace SQL_Sorguları_Çalıştırma_Uygulaması
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-48MHJFV;Initial Catalog=dbo_Futbol_Maç_Tahmin_Sistemi;Integrated Security=True");
        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                string sorgu = richTextBox1.Text;
                SqlDataAdapter da = new SqlDataAdapter(sorgu, connection);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dataGridView1.DataSource = dt;
            }
            catch(Exception)
            {
                MessageBox.Show("Hatalı Giriş", "Bilgi",MessageBoxButtons.OK);
            }
            
        }
        
        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                string sorgu = richTextBox1.Text;
                connection.Open();
                SqlCommand command = new SqlCommand(sorgu, connection);
                command.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter("Select * From Maclar", connection);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dataGridView1.DataSource = dt;
                connection.Close();
            }catch(Exception)
            {
                MessageBox.Show("Hatalı Giriş", "Bilgi", MessageBoxButtons.OK);
            }
            

        }
    }
}
