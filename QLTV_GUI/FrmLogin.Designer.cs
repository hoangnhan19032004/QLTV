﻿namespace QLTV_GUI
{
    partial class FrmLogin
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmLogin));
            this.dxErrorProvider1 = new DevExpress.XtraEditors.DXErrorProvider.DXErrorProvider(this.components);
            this.defaultLookAndFeel1 = new DevExpress.LookAndFeel.DefaultLookAndFeel(this.components);
            this.btnDangNhap = new DevExpress.XtraEditors.SimpleButton();
            this.pl_GiaoDien = new Bunifu.Framework.UI.BunifuGradientPanel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.ck_remember = new DevExpress.XtraEditors.CheckEdit();
            this.panelControl2 = new DevExpress.XtraEditors.PanelControl();
            this.txbPassword = new DevExpress.XtraEditors.TextEdit();
            this.pictureBox3 = new System.Windows.Forms.PictureBox();
            this.pnPass = new System.Windows.Forms.Panel();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.txbUsername = new DevExpress.XtraEditors.TextEdit();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.pnUser = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.dxErrorProvider1)).BeginInit();
            this.pl_GiaoDien.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ck_remember.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).BeginInit();
            this.panelControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txbPassword.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txbUsername.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            this.SuspendLayout();
            // 
            // dxErrorProvider1
            // 
            this.dxErrorProvider1.ContainerControl = this;
            // 
            // defaultLookAndFeel1
            // 
            this.defaultLookAndFeel1.LookAndFeel.SkinName = "WXI";
            // 
            // btnDangNhap
            // 
            this.btnDangNhap.Appearance.BackColor = System.Drawing.Color.Red;
            this.btnDangNhap.Appearance.Font = new System.Drawing.Font("Tahoma", 15F, System.Drawing.FontStyle.Bold);
            this.btnDangNhap.Appearance.ForeColor = System.Drawing.Color.White;
            this.btnDangNhap.Appearance.Options.UseBackColor = true;
            this.btnDangNhap.Appearance.Options.UseFont = true;
            this.btnDangNhap.Appearance.Options.UseForeColor = true;
            this.btnDangNhap.Location = new System.Drawing.Point(18, 281);
            this.btnDangNhap.Margin = new System.Windows.Forms.Padding(4);
            this.btnDangNhap.Name = "btnDangNhap";
            this.btnDangNhap.Size = new System.Drawing.Size(299, 44);
            this.btnDangNhap.TabIndex = 8;
            this.btnDangNhap.Text = "Đăng Nhập";
            this.btnDangNhap.Click += new System.EventHandler(this.btnDangNhap_Click);
            // 
            // pl_GiaoDien
            // 
            this.pl_GiaoDien.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.pl_GiaoDien.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("pl_GiaoDien.BackgroundImage")));
            this.pl_GiaoDien.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pl_GiaoDien.Controls.Add(this.pictureBox1);
            this.pl_GiaoDien.Controls.Add(this.panel1);
            this.pl_GiaoDien.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pl_GiaoDien.GradientBottomLeft = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(192)))));
            this.pl_GiaoDien.GradientBottomRight = System.Drawing.Color.White;
            this.pl_GiaoDien.GradientTopLeft = System.Drawing.Color.Aqua;
            this.pl_GiaoDien.GradientTopRight = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.pl_GiaoDien.Location = new System.Drawing.Point(0, 0);
            this.pl_GiaoDien.Margin = new System.Windows.Forms.Padding(4);
            this.pl_GiaoDien.Name = "pl_GiaoDien";
            this.pl_GiaoDien.Quality = 10;
            this.pl_GiaoDien.Size = new System.Drawing.Size(977, 477);
            this.pl_GiaoDien.TabIndex = 1;
            this.pl_GiaoDien.Paint += new System.Windows.Forms.PaintEventHandler(this.pl_GiaoDien_Paint);
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox1.Image = global::QLTV_GUI.Properties.Resources.img_311846;
            this.pictureBox1.Location = new System.Drawing.Point(423, 13);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(4);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(136, 129);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 2;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Transparent;
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel1.Controls.Add(this.btnDangNhap);
            this.panel1.Controls.Add(this.ck_remember);
            this.panel1.Controls.Add(this.panelControl2);
            this.panel1.Controls.Add(this.panelControl1);
            this.panel1.Location = new System.Drawing.Point(328, 80);
            this.panel1.Margin = new System.Windows.Forms.Padding(4);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(332, 360);
            this.panel1.TabIndex = 0;
            // 
            // ck_remember
            // 
            this.ck_remember.Location = new System.Drawing.Point(18, 233);
            this.ck_remember.Margin = new System.Windows.Forms.Padding(4);
            this.ck_remember.Name = "ck_remember";
            this.ck_remember.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 10F);
            this.ck_remember.Properties.Appearance.Options.UseFont = true;
            this.ck_remember.Properties.Caption = "Remember me";
            this.ck_remember.Size = new System.Drawing.Size(150, 26);
            this.ck_remember.TabIndex = 6;
            // 
            // panelControl2
            // 
            this.panelControl2.Appearance.BackColor = System.Drawing.Color.White;
            this.panelControl2.Appearance.Options.UseBackColor = true;
            this.panelControl2.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.panelControl2.Controls.Add(this.txbPassword);
            this.panelControl2.Controls.Add(this.pictureBox3);
            this.panelControl2.Controls.Add(this.pnPass);
            this.panelControl2.Location = new System.Drawing.Point(18, 176);
            this.panelControl2.Margin = new System.Windows.Forms.Padding(4);
            this.panelControl2.Name = "panelControl2";
            this.panelControl2.Size = new System.Drawing.Size(299, 44);
            this.panelControl2.TabIndex = 4;
            // 
            // txbPassword
            // 
            this.txbPassword.EditValue = "";
            this.txbPassword.Location = new System.Drawing.Point(50, 4);
            this.txbPassword.Margin = new System.Windows.Forms.Padding(4);
            this.txbPassword.Name = "txbPassword";
            this.txbPassword.Properties.Appearance.BackColor = System.Drawing.Color.White;
            this.txbPassword.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 11F);
            this.txbPassword.Properties.Appearance.Options.UseBackColor = true;
            this.txbPassword.Properties.Appearance.Options.UseFont = true;
            this.txbPassword.Properties.AutoHeight = false;
            this.txbPassword.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.txbPassword.Properties.PasswordChar = '*';
            this.txbPassword.Size = new System.Drawing.Size(249, 37);
            this.txbPassword.TabIndex = 4;
            this.txbPassword.EditValueChanged += new System.EventHandler(this.txbPassword_EditValueChanged);
            this.txbPassword.Enter += new System.EventHandler(this.txtPassword_Enter);
            this.txbPassword.Leave += new System.EventHandler(this.txtPassword_Leave);
            // 
            // pictureBox3
            // 
            this.pictureBox3.Image = global::QLTV_GUI.Properties.Resources.img_131108;
            this.pictureBox3.Location = new System.Drawing.Point(5, 2);
            this.pictureBox3.Margin = new System.Windows.Forms.Padding(4);
            this.pictureBox3.Name = "pictureBox3";
            this.pictureBox3.Size = new System.Drawing.Size(37, 39);
            this.pictureBox3.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox3.TabIndex = 0;
            this.pictureBox3.TabStop = false;
            // 
            // pnPass
            // 
            this.pnPass.BackColor = System.Drawing.Color.Gray;
            this.pnPass.Location = new System.Drawing.Point(46, 0);
            this.pnPass.Margin = new System.Windows.Forms.Padding(4);
            this.pnPass.Name = "pnPass";
            this.pnPass.Size = new System.Drawing.Size(4, 44);
            this.pnPass.TabIndex = 1;
            // 
            // panelControl1
            // 
            this.panelControl1.Appearance.BackColor = System.Drawing.Color.White;
            this.panelControl1.Appearance.Options.UseBackColor = true;
            this.panelControl1.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.panelControl1.Controls.Add(this.txbUsername);
            this.panelControl1.Controls.Add(this.pictureBox2);
            this.panelControl1.Controls.Add(this.pnUser);
            this.panelControl1.Location = new System.Drawing.Point(18, 106);
            this.panelControl1.Margin = new System.Windows.Forms.Padding(4);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(299, 44);
            this.panelControl1.TabIndex = 1;
            // 
            // txbUsername
            // 
            this.txbUsername.EditValue = "";
            this.txbUsername.Location = new System.Drawing.Point(50, 7);
            this.txbUsername.Margin = new System.Windows.Forms.Padding(4);
            this.txbUsername.Name = "txbUsername";
            this.txbUsername.Properties.Appearance.BackColor = System.Drawing.Color.White;
            this.txbUsername.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 11F);
            this.txbUsername.Properties.Appearance.Options.UseBackColor = true;
            this.txbUsername.Properties.Appearance.Options.UseFont = true;
            this.txbUsername.Properties.AutoHeight = false;
            this.txbUsername.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.txbUsername.Size = new System.Drawing.Size(245, 37);
            this.txbUsername.TabIndex = 2;
            this.txbUsername.EditValueChanged += new System.EventHandler(this.txbUsername_EditValueChanged);
            this.txbUsername.Enter += new System.EventHandler(this.txtUsername_Enter);
            this.txbUsername.Leave += new System.EventHandler(this.txtUsername_Leave);
            // 
            // pictureBox2
            // 
            this.pictureBox2.Image = global::QLTV_GUI.Properties.Resources.user__2_;
            this.pictureBox2.Location = new System.Drawing.Point(5, 2);
            this.pictureBox2.Margin = new System.Windows.Forms.Padding(4);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(37, 39);
            this.pictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox2.TabIndex = 0;
            this.pictureBox2.TabStop = false;
            // 
            // pnUser
            // 
            this.pnUser.BackColor = System.Drawing.Color.Gray;
            this.pnUser.Location = new System.Drawing.Point(46, 0);
            this.pnUser.Margin = new System.Windows.Forms.Padding(4);
            this.pnUser.Name = "pnUser";
            this.pnUser.Size = new System.Drawing.Size(4, 44);
            this.pnUser.TabIndex = 1;
            // 
            // FrmLogin
            // 
            this.AcceptButton = this.btnDangNhap;
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(977, 477);
            this.Controls.Add(this.pl_GiaoDien);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.IconOptions.LargeImage = ((System.Drawing.Image)(resources.GetObject("FrmLogin.IconOptions.LargeImage")));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.MaximizeBox = false;
            this.Name = "FrmLogin";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Đăng Nhập";
            this.Load += new System.EventHandler(this.FrmLogin_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dxErrorProvider1)).EndInit();
            this.pl_GiaoDien.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.ck_remember.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).EndInit();
            this.panelControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.txbPassword.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.txbUsername.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private Bunifu.Framework.UI.BunifuGradientPanel pl_GiaoDien;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Panel panel1;
        private DevExpress.XtraEditors.TextEdit txbPassword;
        private System.Windows.Forms.Panel pnPass;
        private System.Windows.Forms.PictureBox pictureBox3;
        private DevExpress.XtraEditors.TextEdit txbUsername;
        private System.Windows.Forms.Panel pnUser;
        private System.Windows.Forms.PictureBox pictureBox2;
        private DevExpress.XtraEditors.PanelControl panelControl2;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.CheckEdit ck_remember;
        private DevExpress.XtraEditors.SimpleButton btnDangNhap;
        private DevExpress.XtraEditors.DXErrorProvider.DXErrorProvider dxErrorProvider1;
        private DevExpress.LookAndFeel.DefaultLookAndFeel defaultLookAndFeel1;
    }
}