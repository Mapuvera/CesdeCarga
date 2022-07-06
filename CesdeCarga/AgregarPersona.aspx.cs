using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace CesdeCarga
{
    public partial class AgregarPersona : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                llenarDropDownList();
            }
            
        }
        private int validarvacios(string documento,string pn, string sn, string pa,string sa,string email,int rol)
        {
            int bandera;


            if (documento == "" || pn=="" || sn == "" || pa == "" || sa =="" || email=="" || rol==0)
            {
                bandera = 0;
            }
            else
            {
                bandera = 1;
            }
            return bandera;
        }

        protected void btnAgregarPersona_Click(object sender, EventArgs e)
        {
            ConexionBD Usuario = new ConexionBD();
            int bandera;
            bandera = validarvacios(txtIdUsuario.Text, txt1Nombre.Text, txt2Nombre.Text, txt1Apellido.Text, txt2Apellido.Text, txtEmail.Text, System.Convert.ToInt32(ddlRol.Text));

            if (bandera == 0)
            {
                lblmensaje.Text = "Todos los campos son obligatorios";
                lblmensaje.Visible = true;
            }
            else
            {
                try
                {

                    int AgregarCombo = Usuario.GrabarPersona(System.Convert.ToDecimal(txtIdUsuario.Text), txt1Nombre.Text, txt2Nombre.Text, txt1Apellido.Text, txt2Apellido.Text, txtEmail.Text, System.Convert.ToInt32(ddlRol.Text));
                    string cadena = Usuario.ValidarDatos(System.Convert.ToDecimal(txtIdUsuario.Text));
                    string correo = Usuario.TraerCorreo(System.Convert.ToDecimal(txtIdUsuario.Text));
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
                    mm.Subject = "Credenciales de acceso";
                    mm.Body = "<h1>CREDENCIALES DE ACCESO A NUESTRO PORTAL TRANSACCIONAL</h1>";
                    mm.Body += "<p>Su usuario y su contraseña son:</p>";
                    mm.Body += cadena;
                    mm.To.Add(new MailAddress(correo));
                    smtp.Send(mm); //Enviar el mensaje

                    lblmensaje.Text = "A su correo hemos enviado las credenciales de acceso.Por favor verifique";
                    lblmensaje.Visible = true;

                }
                catch (Exception ex)
                {

                }
            }

            
        }

        protected void btnMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void llenarDropDownList()
        {
            ConexionBD consultar = new ConexionBD();
            ddlRol.DataSource = consultar.Consultar("SELECT * FROM T_Rol");
            ddlRol.DataTextField = "NombreRol";
            ddlRol.DataValueField = "IdRol";
            ddlRol.DataBind();
            ddlRol.Items.Insert(0, new ListItem("Seleccionar","0"));
            


        }
    }
}