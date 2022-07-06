using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace CesdeCarga
{
    public partial class OlvideContraseña : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private int validarvacios(string documento)
        {
            int bandera;


            if (documento == "" )
            {
                bandera = 0;
            }
            else
            {
                bandera = 1;
            }
            return bandera;
        }

        protected void btnRestaurar_Click(object sender, EventArgs e)
        {
            int validar;
            ConexionBD res = new ConexionBD();
            
            
            validar = validarvacios(txtDocumento.Text);
            if (validar == 0)
            {
                mensaje.Text = "Por favor escriba su número de documento";
                mensaje.Visible = true;

            }
            else
            {
                string cadena = res.ValidarDatos(System.Convert.ToDecimal(txtDocumento.Text));
                string correo = res.TraerCorreo(System.Convert.ToDecimal(txtDocumento.Text));
                //Parte 1 Configuracion del servidor del correo
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 25;
                smtp.EnableSsl = true; //Envío de forma segura
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("cesdecargarf@gmail.com", "Cesde123carga");


                //Parte 2 Envío del correo
                MailMessage mm = new MailMessage();
                mm.IsBodyHtml = true;
                mm.Priority = MailPriority.Normal;
                mm.From = new MailAddress("cesdecargarf@gmail.com");
                mm.Subject = "Recuperación Contraseña";
                mm.Body = "<h1>Recuperar Contraseña</h1>";
                mm.Body += "<p>Este correo le permite recuperar la contraseña la cual es:</p>";
                mm.Body += cadena;
                mm.To.Add(new MailAddress(correo));
                smtp.Send(mm); //Enviar el mensaje

                mensaje.Text = "Las credenciales fueron enviadas correctamente";
                mensaje.Visible = true;
            }

            
        }


       
    }
}