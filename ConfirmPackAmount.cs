using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Linq;

namespace VanguardPackOpenerForm
{
    public partial class ConfirmPackAmount : Form
    {
        int maxPacks;
        int numOfPacks;
        string boxName;
        string rates;
        Box_Selector boxSelector;
        public ConfirmPackAmount(int maxPacks, string boxName, string rates,Box_Selector box_Selector)
        {
            InitializeComponent();
            this.maxPacks = maxPacks;
            this.boxName = boxName;
            this.rates = rates;
            this.boxSelector = box_Selector;

            PackNumSelector.Maximum = maxPacks;
        }

        private void ConfirmPackAmount_Load(object sender, EventArgs e)
        {

        }

        private void SetPackNumbers(object sender, EventArgs e)
        { 
            //Allow the user to select the number of packs they wish to open up. UpTo the number of packs per box.
            numOfPacks = ((int)PackNumSelector.Value);
            WhatPackTypeOpens();
        }
        private void WhatPackTypeOpens()
        {
            // Open the correct Form containing the correct rates for the type of box/ era the box came out in

            switch (rates)
            {
                case ("OG"):
                    OGPackOpener oGPackOpener = new OGPackOpener(boxName, numOfPacks);
                    oGPackOpener.Show();
                    boxSelector.Hide();
                    this.Hide();
                    break;
                case ("V"):
                    VPackOpener vPackOpener = new VPackOpener(boxName, numOfPacks);
                    vPackOpener.Show();
                    boxSelector.Hide();
                    this.Hide();
                    break;
                default:
                    this.Close();
                    break;

            }

        }
    }
}
