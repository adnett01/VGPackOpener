using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace VanguardPackOpenerForm
{
    public partial class Box_Selector : Form
    {

        MySqlConnection con = new MySqlConnection("server=localhost;uid=root;pwd=#Vanguard25;database=vanguard_sets;");


        string boxName;
        string rates;
        int maxPacks;
        int numOfPacks;
        string buttonPressed;

        bool isboxSelected;

        public Box_Selector()
        {
            InitializeComponent();
            
        }

        private void Box_Selector_Load(object sender, EventArgs e)
        {
            con.Open();
            isboxSelected = false;
        }

        /* User should be able to select a button which will determine what box they open using SQL the code
         should grab the set name, set rates and Packs Per Box to pass through to a form that allows the 
        user to select how many pack they open */

        private void SetBtnPressed(object sender, EventArgs e)
        {
            Button btnPress = sender as Button;
            buttonPressed = btnPress.Name;
            Debug.WriteLine(buttonPressed);

            if (isboxSelected == false)
            {
                SelectBox();
            }

        }

        private void SelectBox()
        {
            

            MySqlCommand cmd;

            MySqlDataReader dr;

            cmd = new MySqlCommand($"Select set_name, set_rates, ppb from booster_sets where set_name = '{buttonPressed}'" , con);

            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                boxName = dr.GetString(0).ToLower();
                rates = dr.GetString(1);
                maxPacks = dr.GetInt32(2);
            }

            dr.Close();


            ConfirmPackAmount confirmPackAmount = new ConfirmPackAmount(maxPacks,boxName,rates,this);
            confirmPackAmount.ShowDialog();

        }

       


        

       


        private void PackNumSelector_ValueChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void Box1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {

        }
    }
}
