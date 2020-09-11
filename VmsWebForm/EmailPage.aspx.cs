using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VmsWebForm
{
    public partial class EmailPage : System.Web.UI.Page
    {
        private const string emailUrl = "https://vms.westus2.cloudapp.azure.com/api/email/send";
        protected void Page_Load(object sender, EventArgs e)
        {
            txtSenderAddress.Text = "test@eqlvms.net";
        }

        protected void btnSenderEmail_Click(object sender, EventArgs e)
        {
            var senderEmail = new SendEmailDto()
            {
                Sender = new EmailSenderOrRecipientDto
                {
                    Name = txtSenderName.Text,
                    Address = txtSenderAddress.Text
                },
                Recipients = new List<EmailSenderOrRecipientDto> { new EmailSenderOrRecipientDto
                {
                    Name = txtRecipientName.Text,
                    Address = txtRecipientAddress.Text
                }},
                Subject = txtEmailSubject.Text,
                Body = txtEmailBody.Text
            };
            var postData = JsonConvert.SerializeObject(senderEmail);

            using (var client = new HttpClient())
            {
                var content = new StringContent(postData);
                content.Headers.ContentType = new System.Net.Http.Headers.MediaTypeHeaderValue("application/json");
                HttpResponseMessage response = client.PostAsync(emailUrl, content).Result;
                response.EnsureSuccessStatusCode();
                labelResult.Text = response.IsSuccessStatusCode ? "Send Successfully!": "Send Failture!";
            }
        }
    }

    public class SendEmailDto
    {
        /// <summary>
        /// 发件人的邮箱
        /// </summary>
        public EmailSenderOrRecipientDto Sender { get; set; }
        /// <summary>
        /// 收件人邮箱
        /// 是一个列表或数组
        /// </summary>
        public List<EmailSenderOrRecipientDto> Recipients { get; set; }
        /// <summary>
        /// 主题
        /// </summary>
        public string Subject { get; set; }
        /// <summary>
        /// 信的内容
        /// </summary>
        public string Body { get; set; }
        /// <summary>
        /// 发信的时间
        /// </summary>
        public DateTime SendTime { get; set; }
    }

    public class EmailSenderOrRecipientDto
    {
        public string Name { get; set; }
        public string Address { get; set; }
    }
}