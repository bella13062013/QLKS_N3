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
using System.Configuration;
using System.Data;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;


namespace Hotel_N3
{
    public partial class Form1 : Form
    {
        
        public Form1()
        {
            InitializeComponent();
        }
        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void txtuser_TextChanged(object sender, EventArgs e)
        {

        }
        // Hiển thị mật khẩu đăng nhập
        private void chkpass_CheckedChanged(object sender, EventArgs e)
        {
            if(chkpass.Checked)
            {
                txtpass.PasswordChar = (char)0;
            }
            else
            {
                txtpass.PasswordChar = '*';
            }
        }
        // Nút thoát 
        private void btnthoat_Click(object sender, EventArgs e)
        {
            Form2 f2 = new Form2();
            this.Hide();
            f2.ShowDialog();
        }
        // Nút đăng nhập
        // Nhập tên tài khoản và mật khẩu có trong hệ thống .
        private void btndangnhap_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-TKH6OOF\\SQLEXPRESS;Initial Catalog=QLKS_N3;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("Select chucvu from dangnhap Where tendangnhap ='" + txtuser.Text + "' and matkhau ='" + txtpass.Text + "'",con);
            DataTable dt = new System.Data.DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count == 1)
            {
                this.Hide();
                MDIParent1 ss = new MDIParent1(dt.Rows[0][0].ToString());
                ss.Show();
                //((Form)ss).Controls["label1"].Text = dt.Rows[0][0].ToString();
            }    
        }

        private void txtuser_MouseClick(object sender, MouseEventArgs e)
        {
            txtuser.SelectAll();
        }

        private void txtpass_MouseClick(object sender, MouseEventArgs e)
        {
            txtpass.SelectAll();
        }
    }

}
