namespace VanguardPackOpenerForm
{
    partial class ConfirmPackAmount
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.howMany = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            this.Accept = new System.Windows.Forms.Button();
            this.PackNumSelector = new System.Windows.Forms.NumericUpDown();
            this.howMany.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.PackNumSelector)).BeginInit();
            this.SuspendLayout();
            // 
            // howMany
            // 
            this.howMany.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.howMany.Controls.Add(this.label1);
            this.howMany.Controls.Add(this.Accept);
            this.howMany.Controls.Add(this.PackNumSelector);
            this.howMany.Location = new System.Drawing.Point(3, 12);
            this.howMany.Name = "howMany";
            this.howMany.Size = new System.Drawing.Size(334, 211);
            this.howMany.TabIndex = 4;
            this.howMany.TabStop = false;
            // 
            // label1
            // 
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(24, 37);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(283, 92);
            this.label1.TabIndex = 4;
            this.label1.Text = "How Many Packs Would You Like?";
            // 
            // Accept
            // 
            this.Accept.Font = new System.Drawing.Font("Microsoft Sans Serif", 30F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Accept.Location = new System.Drawing.Point(196, 152);
            this.Accept.Name = "Accept";
            this.Accept.Size = new System.Drawing.Size(91, 53);
            this.Accept.TabIndex = 3;
            this.Accept.Text = "OK";
            this.Accept.UseVisualStyleBackColor = true;
            this.Accept.Click += new System.EventHandler(this.SetPackNumbers);
            // 
            // PackNumSelector
            // 
            this.PackNumSelector.Font = new System.Drawing.Font("Microsoft Sans Serif", 30F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.PackNumSelector.Location = new System.Drawing.Point(67, 152);
            this.PackNumSelector.Maximum = new decimal(new int[] {
            300,
            0,
            0,
            0});
            this.PackNumSelector.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.PackNumSelector.Name = "PackNumSelector";
            this.PackNumSelector.Size = new System.Drawing.Size(100, 53);
            this.PackNumSelector.TabIndex = 2;
            this.PackNumSelector.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            // 
            // ConfirmPackAmount
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.ClientSize = new System.Drawing.Size(346, 235);
            this.Controls.Add(this.howMany);
            this.Name = "ConfirmPackAmount";
            this.Text = "ConfirmPackAmount";
            this.Load += new System.EventHandler(this.ConfirmPackAmount_Load);
            this.howMany.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.PackNumSelector)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox howMany;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button Accept;
        private System.Windows.Forms.NumericUpDown PackNumSelector;
    }
}