using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Hotel_N3
{
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }

        private void Form3_Load(object sender, EventArgs e)
        {
            label9.Text = "Tài khoản đăng nhập là : \n " +
                ((Form)this.MdiParent).Controls["label1"].Text;
            if(((Form)this.MdiParent).Controls["label1"].Text != "quản lý")
            {
                btnxoa.Enabled = false;
                btnthem.Enabled = false;
                btnsua.Enabled = false;
                btnlammoi.Enabled = false;
            }    
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }
    }
}
