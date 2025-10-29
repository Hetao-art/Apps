namespace CSharpApiDemo
{
    partial class Form1
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要修改
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.tc_bu = new System.Windows.Forms.TabControl();
            this.tp_add = new System.Windows.Forms.TabPage();
            this.rtb_add = new System.Windows.Forms.RichTextBox();
            this.tp_get = new System.Windows.Forms.TabPage();
            this.rtb_get = new System.Windows.Forms.RichTextBox();
            this.tp_invalid = new System.Windows.Forms.TabPage();
            this.rtb_invalid = new System.Windows.Forms.RichTextBox();
            this.tb_url = new System.Windows.Forms.TextBox();
            this.lb_urlAddress = new System.Windows.Forms.Label();
            this.bt_callApi = new System.Windows.Forms.Button();
            this.rtb_response = new System.Windows.Forms.RichTextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.tb_userId = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.cb_method = new System.Windows.Forms.CheckBox();
            this.lb_token = new System.Windows.Forms.Label();
            this.tb_token = new System.Windows.Forms.TextBox();
            this.tb_webService = new System.Windows.Forms.RadioButton();
            this.rb_webApi = new System.Windows.Forms.RadioButton();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.lb_urlType = new System.Windows.Forms.Label();
            this.bt_saveConfig = new System.Windows.Forms.Button();
            this.tc_bu.SuspendLayout();
            this.tp_add.SuspendLayout();
            this.tp_get.SuspendLayout();
            this.tp_invalid.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // tc_bu
            // 
            this.tc_bu.Controls.Add(this.tp_add);
            this.tc_bu.Controls.Add(this.tp_get);
            this.tc_bu.Controls.Add(this.tp_invalid);
            this.tc_bu.Location = new System.Drawing.Point(12, 95);
            this.tc_bu.Name = "tc_bu";
            this.tc_bu.SelectedIndex = 0;
            this.tc_bu.Size = new System.Drawing.Size(758, 265);
            this.tc_bu.TabIndex = 0;
            // 
            // tp_add
            // 
            this.tp_add.Controls.Add(this.rtb_add);
            this.tp_add.Location = new System.Drawing.Point(4, 25);
            this.tp_add.Name = "tp_add";
            this.tp_add.Padding = new System.Windows.Forms.Padding(3);
            this.tp_add.Size = new System.Drawing.Size(750, 236);
            this.tp_add.TabIndex = 0;
            this.tp_add.Text = "上传";
            this.tp_add.UseVisualStyleBackColor = true;
            // 
            // rtb_add
            // 
            this.rtb_add.Dock = System.Windows.Forms.DockStyle.Fill;
            this.rtb_add.Location = new System.Drawing.Point(3, 3);
            this.rtb_add.Name = "rtb_add";
            this.rtb_add.Size = new System.Drawing.Size(744, 230);
            this.rtb_add.TabIndex = 0;
            this.rtb_add.Text = "";
            // 
            // tp_get
            // 
            this.tp_get.Controls.Add(this.rtb_get);
            this.tp_get.Location = new System.Drawing.Point(4, 25);
            this.tp_get.Name = "tp_get";
            this.tp_get.Padding = new System.Windows.Forms.Padding(3);
            this.tp_get.Size = new System.Drawing.Size(750, 236);
            this.tp_get.TabIndex = 1;
            this.tp_get.Text = "查询";
            this.tp_get.UseVisualStyleBackColor = true;
            // 
            // rtb_get
            // 
            this.rtb_get.Dock = System.Windows.Forms.DockStyle.Fill;
            this.rtb_get.Location = new System.Drawing.Point(3, 3);
            this.rtb_get.Name = "rtb_get";
            this.rtb_get.Size = new System.Drawing.Size(744, 230);
            this.rtb_get.TabIndex = 0;
            this.rtb_get.Text = "";
            // 
            // tp_invalid
            // 
            this.tp_invalid.Controls.Add(this.rtb_invalid);
            this.tp_invalid.Location = new System.Drawing.Point(4, 25);
            this.tp_invalid.Name = "tp_invalid";
            this.tp_invalid.Padding = new System.Windows.Forms.Padding(3);
            this.tp_invalid.Size = new System.Drawing.Size(750, 236);
            this.tp_invalid.TabIndex = 2;
            this.tp_invalid.Text = "作废";
            this.tp_invalid.UseVisualStyleBackColor = true;
            // 
            // rtb_invalid
            // 
            this.rtb_invalid.Dock = System.Windows.Forms.DockStyle.Fill;
            this.rtb_invalid.Location = new System.Drawing.Point(3, 3);
            this.rtb_invalid.Name = "rtb_invalid";
            this.rtb_invalid.Size = new System.Drawing.Size(744, 230);
            this.rtb_invalid.TabIndex = 0;
            this.rtb_invalid.Text = "";
            // 
            // tb_url
            // 
            this.tb_url.Location = new System.Drawing.Point(88, 9);
            this.tb_url.Name = "tb_url";
            this.tb_url.Size = new System.Drawing.Size(350, 25);
            this.tb_url.TabIndex = 1;
            // 
            // lb_urlAddress
            // 
            this.lb_urlAddress.AutoSize = true;
            this.lb_urlAddress.Location = new System.Drawing.Point(16, 15);
            this.lb_urlAddress.Name = "lb_urlAddress";
            this.lb_urlAddress.Size = new System.Drawing.Size(67, 15);
            this.lb_urlAddress.TabIndex = 2;
            this.lb_urlAddress.Text = "调用地址";
            // 
            // bt_callApi
            // 
            this.bt_callApi.Location = new System.Drawing.Point(691, 9);
            this.bt_callApi.Name = "bt_callApi";
            this.bt_callApi.Size = new System.Drawing.Size(75, 25);
            this.bt_callApi.TabIndex = 3;
            this.bt_callApi.Text = "调用";
            this.bt_callApi.UseVisualStyleBackColor = true;
            this.bt_callApi.Click += new System.EventHandler(this.bt_callApi_Click);
            // 
            // rtb_response
            // 
            this.rtb_response.Location = new System.Drawing.Point(12, 389);
            this.rtb_response.Name = "rtb_response";
            this.rtb_response.Size = new System.Drawing.Size(754, 152);
            this.rtb_response.TabIndex = 4;
            this.rtb_response.Text = "";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(9, 366);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(67, 15);
            this.label1.TabIndex = 5;
            this.label1.Text = "调用结果";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(16, 46);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(55, 15);
            this.label2.TabIndex = 6;
            this.label2.Text = "userId";
            // 
            // tb_userId
            // 
            this.tb_userId.Location = new System.Drawing.Point(19, 64);
            this.tb_userId.Name = "tb_userId";
            this.tb_userId.Size = new System.Drawing.Size(190, 25);
            this.tb_userId.TabIndex = 7;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(449, 46);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(95, 15);
            this.label4.TabIndex = 10;
            this.label4.Text = "siginMethod";
            // 
            // cb_method
            // 
            this.cb_method.AutoSize = true;
            this.cb_method.Location = new System.Drawing.Point(452, 69);
            this.cb_method.Name = "cb_method";
            this.cb_method.Size = new System.Drawing.Size(89, 19);
            this.cb_method.TabIndex = 11;
            this.cb_method.Text = "高级加密";
            this.cb_method.UseVisualStyleBackColor = true;
            // 
            // lb_token
            // 
            this.lb_token.AutoSize = true;
            this.lb_token.Location = new System.Drawing.Point(234, 46);
            this.lb_token.Name = "lb_token";
            this.lb_token.Size = new System.Drawing.Size(47, 15);
            this.lb_token.TabIndex = 12;
            this.lb_token.Text = "token";
            // 
            // tb_token
            // 
            this.tb_token.Location = new System.Drawing.Point(237, 64);
            this.tb_token.Name = "tb_token";
            this.tb_token.Size = new System.Drawing.Size(190, 25);
            this.tb_token.TabIndex = 13;
            // 
            // tb_webService
            // 
            this.tb_webService.AutoSize = true;
            this.tb_webService.Location = new System.Drawing.Point(6, 18);
            this.tb_webService.Name = "tb_webService";
            this.tb_webService.Size = new System.Drawing.Size(52, 19);
            this.tb_webService.TabIndex = 14;
            this.tb_webService.TabStop = true;
            this.tb_webService.Text = "xml";
            this.tb_webService.UseVisualStyleBackColor = true;
            this.tb_webService.Click += new System.EventHandler(this.tb_webService_Click);
            // 
            // rb_webApi
            // 
            this.rb_webApi.AutoSize = true;
            this.rb_webApi.Location = new System.Drawing.Point(65, 18);
            this.rb_webApi.Name = "rb_webApi";
            this.rb_webApi.Size = new System.Drawing.Size(60, 19);
            this.rb_webApi.TabIndex = 15;
            this.rb_webApi.TabStop = true;
            this.rb_webApi.Text = "Json";
            this.rb_webApi.UseVisualStyleBackColor = true;
            this.rb_webApi.Click += new System.EventHandler(this.rb_webApi_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.tb_webService);
            this.groupBox1.Controls.Add(this.rb_webApi);
            this.groupBox1.Location = new System.Drawing.Point(551, 46);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(131, 47);
            this.groupBox1.TabIndex = 17;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "调用方式";
            // 
            // lb_urlType
            // 
            this.lb_urlType.AutoSize = true;
            this.lb_urlType.Location = new System.Drawing.Point(450, 14);
            this.lb_urlType.Name = "lb_urlType";
            this.lb_urlType.Size = new System.Drawing.Size(55, 15);
            this.lb_urlType.TabIndex = 18;
            this.lb_urlType.Text = "label3";
            // 
            // bt_saveConfig
            // 
            this.bt_saveConfig.Location = new System.Drawing.Point(691, 62);
            this.bt_saveConfig.Name = "bt_saveConfig";
            this.bt_saveConfig.Size = new System.Drawing.Size(75, 25);
            this.bt_saveConfig.TabIndex = 19;
            this.bt_saveConfig.Text = "保存";
            this.bt_saveConfig.UseVisualStyleBackColor = true;
            this.bt_saveConfig.Click += new System.EventHandler(this.bt_saveConfig_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(782, 553);
            this.Controls.Add(this.bt_saveConfig);
            this.Controls.Add(this.lb_urlType);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.tb_token);
            this.Controls.Add(this.lb_token);
            this.Controls.Add(this.cb_method);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.tb_userId);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.rtb_response);
            this.Controls.Add(this.bt_callApi);
            this.Controls.Add(this.lb_urlAddress);
            this.Controls.Add(this.tb_url);
            this.Controls.Add(this.tc_bu);
            this.MaximizeBox = false;
            this.MaximumSize = new System.Drawing.Size(800, 600);
            this.MinimumSize = new System.Drawing.Size(800, 600);
            this.Name = "Form1";
            this.Text = "调用接口";
            this.tc_bu.ResumeLayout(false);
            this.tp_add.ResumeLayout(false);
            this.tp_get.ResumeLayout(false);
            this.tp_invalid.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TabControl tc_bu;
        private System.Windows.Forms.TabPage tp_add;
        private System.Windows.Forms.TabPage tp_get;
        private System.Windows.Forms.TextBox tb_url;
        private System.Windows.Forms.TabPage tp_invalid;
        private System.Windows.Forms.Label lb_urlAddress;
        private System.Windows.Forms.Button bt_callApi;
        private System.Windows.Forms.RichTextBox rtb_response;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.RichTextBox rtb_add;
        private System.Windows.Forms.RichTextBox rtb_get;
        private System.Windows.Forms.RichTextBox rtb_invalid;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox tb_userId;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.CheckBox cb_method;
        private System.Windows.Forms.Label lb_token;
        private System.Windows.Forms.TextBox tb_token;
        private System.Windows.Forms.RadioButton tb_webService;
        private System.Windows.Forms.RadioButton rb_webApi;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label lb_urlType;
        private System.Windows.Forms.Button bt_saveConfig;
    }
}

