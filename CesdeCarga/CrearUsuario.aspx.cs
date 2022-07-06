using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CesdeCarga
{
    public partial class CrearUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btningresar_Click(object sender, EventArgs e)
        {
            ConexionBD Usuario = new ConexionBD();
            try
            {
                int bandera = Usuario.AgregarUsuario(System.Convert.ToDecimal(txtIdUsuario.Text), txtUsuario.Text, txtPassword.Text);
                
                if (bandera == 0)
                {
                    mensaje.Text = "Creado Satisfactoriamente";
                    mensaje.Visible = true;
                    Response.Redirect("Inicio.aspx");
                }
                else
                {
                    mensaje.Text = "No ha sido creado satisfactoriamente";
                    mensaje.Visible = true;
                }
            }catch(Exception ex)
            {

            }
        }
    }
}