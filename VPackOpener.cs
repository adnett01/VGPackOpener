using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace VanguardPackOpenerForm
{
    public partial class VPackOpener : Form
    {
        MySqlConnection con = new MySqlConnection("server=localhost;uid=root;pwd=insertpassword;database=vanguard_sets;");

        Random rand = new Random();

        string rarity = "???";


        string boxName;
        int NumOfPacksToOpen;
        int currentPack;

        int maxRand;
        public VPackOpener(string set_name, int packsToOpen)
        {
            InitializeComponent();
            con.Open();
            boxName = set_name;
            NumOfPacksToOpen = packsToOpen;
            currentPack = 0;
            getDataLength();
            getRandCard();
        }

        private void VPackOpener_Load(object sender, EventArgs e)
        {

        }

        //Using SQL grab the number of items in the database to create a max value for the random Num
        public void getDataLength()
        {

            MySqlCommand cmd = new MySqlCommand($"Select Max(card_id) from {boxName.ToLower()}", con);
            MySqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                maxRand = dr.GetInt32(0);
            }

            dr.Close();
        }

        /* Once The buttons pressed the code should loop 7 times which 3 times will have the SQL look for an item in 
           the database that contain the C rarity, the 4th and 5th time should look for cards that are triggers and c rarity
           the 6th loop should have SQL look for a R card and the last card rarity being randomized based on the 
           set rates setting the text and imgs in the form.
            */

        public void getRandCard()
        {
            bool cardFound = false;
            string cardName = "???";
            string cardImg = "???";
            string currentCardType = "???";

            int cardId1 = 0, cardId2 = 0, cardId3 = 0, cardId4 = 0;

            int id;

            MySqlCommand cmd;

            MySqlDataReader dr;



            for (int i = 0; i < 7; i++)
            {

                Debug.WriteLine(i);
                cardFound = false;

                if(i == 5)
                {
                    rarity = "'R'";
                }
                else if (i == 6)
                {
                    SetRarity();
                }
                else
                {
                    rarity = "'C'";
                }

                if(i == 3 || i == 4)
                {
                    currentCardType = "Trigger";
                }
                else
                {
                    currentCardType = "Normal";
                }


                    do
                    {
                        id = rand.Next(1, maxRand + 1);

                        if (id != cardId1 && id != cardId2 && id != cardId3 && id != cardId4)
                        {

                            cmd = new MySqlCommand($"Select card_name, card_type, card_rarity, card_img from {boxName.ToLower()} where card_id = {id}  AND card_rarity = {rarity}  AND  card_type = '{currentCardType}'", con);

                            dr = cmd.ExecuteReader();

                            if (dr.Read())
                            {
                                cardName = dr.GetString(0);
                                cardImg = $"C:\\Users\\adamb\\Documents\\VanguardBoxSets\\{boxName.ToLower()}\\{dr.GetString(3)}";

                                if (cardName != null)
                                {
                                    switch (i)
                                    {
                                        case 0:
                                            card_1.Text = cardName;
                                            card_img_1.Load(cardImg);
                                            cardId1 = id;
                                            break;
                                        case 1:
                                            card_2.Text = cardName;
                                            card_img_2.Load(cardImg);
                                            cardId2 = id;
                                            break;
                                        case 2:
                                            card_3.Text = cardName;
                                            card_img_3.Load(cardImg);
                                            cardId3 = id;
                                            break;
                                        case 3:
                                            card_4.Text = cardName;
                                            card_img_4.Load(cardImg);
                                            cardId4 = id;
                                            break;
                                        case 4:
                                            card_5.Text = cardName;
                                            card_img_5.Load(cardImg);
                                            break;
                                        case 5:
                                            card_6.Text = cardName;
                                            card_img_6.Load(cardImg);
                                            break;
                                        case 6:
                                            card_7.Text = cardName;
                                            card_img_7.Load(cardImg);
                                            break;
                                        default:
                                            card_1.Text = cardName;
                                            card_img_1.Load(cardImg);
                                            break;

                                    }
                                    cardFound = true;
                                }
                            }

                            dr.Close();
                        }

                    }
                    while (!cardFound);
            }

            PackCheck();

        }

        // Rates for the V Pack rates 2 VRs 3 RRRs 6 RRs in a Box consisting of 16 Packs the rest being Rs
        private void SetRarity()
        {
            int rarityRate = rand.Next(1, 16);

            switch (rarityRate)
            {
                case 1:
                case 2:
                    rarity = "'VR'";
                    break;
                case 3:
                case 4:
                case 5:
                    rarity = "'RRR'";
                    break;
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                    rarity = "'RR'";
                    break;

                default:
                    rarity = "'R'";
                    break;

            }
        }

        // Used to see if the user has opened all the packs they selected previously
        // taking them back to the box selector if they've opened them all
        private void PackCheck()
        {
            currentPack++;


            if (currentPack > NumOfPacksToOpen)
            {
                Box_Selector box_Selector = new Box_Selector();
                box_Selector.Show();
                this.Hide();
            }
            PackCounter.Text = $"{currentPack}/{NumOfPacksToOpen}";
        }

        private void RndCard_Click(object sender, EventArgs e)
        {
            getRandCard();
        }


    }



}
