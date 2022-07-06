using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace CesdeCarga
{
    public partial class ConsultarPersona : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscarPedidos_Click(object sender, ImageClickEventArgs e)
        {
            MostrarPersona(System.Convert.ToDecimal(txtIdPersona.Text));
        }

        public void MostrarPersona(decimal txtIdPersona)
        {
            //ConexionBD validar = new ConexionBD();
            //int contador = validar.ValidarPersona(System.Convert.ToDecimal(txtIdPersona));
            //if (contador == 1)
            //{
                try
                {
                    SqlConnection bd;
                    bd = new SqlConnection("server=localhost\\SQLEXPRESS; database = CESDECARGA; integrated security =true ");
                    bd.Open();
                    SqlDataAdapter cmd;
                    SqlCommand comando = new SqlCommand("sp_MostrarPersona", bd);
                    comando.CommandType = System.Data.CommandType.StoredProcedure;

                    comando.Parameters.Add(new SqlParameter("@Documento", txtIdPersona));
                    cmd = new SqlDataAdapter(comando);

                    DataTable dt = new DataTable();
                    cmd.Fill(dt);
                    GdPersonas.DataSource = (dt);
                    GdPersonas.DataBind();
                    bd.Close();




                }
                catch (Exception ex)
                {

                }

            //}
            //else
            //{
            //    lblmensaje.Text = "Este pedido no se encuentra registrado";
            //    lblmensaje.Visible = true;
                

            //}

        }

        protected void btnMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
    }
}