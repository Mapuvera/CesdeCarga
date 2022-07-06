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
    public partial class ConsultaPedido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GdPedidos.Columns.Clear();
        }

        protected void btnBuscarPedidos_Click(object sender, ImageClickEventArgs e)
        {
            
            MostrarPedido(System.Convert.ToInt32(txtIdPedido.Text));
        }

        public void MostrarPedido(int txtIdPedido)
        {
            ConexionBD validar = new ConexionBD();
            int contador = validar.ValidarPedido(System.Convert.ToInt32(txtIdPedido));
            if (contador == 1)
            {
                try
                {
                    SqlConnection bd;
                    bd = new SqlConnection("server=localhost\\SQLEXPRESS; database = CESDECARGA; integrated security =true ");
                    bd.Open();
                    SqlDataAdapter cmd;
                    SqlCommand comando = new SqlCommand("sp_MostrarPedido", bd);
                    comando.CommandType = System.Data.CommandType.StoredProcedure;

                    comando.Parameters.Add(new SqlParameter("@IdPedido", txtIdPedido));
                    cmd = new SqlDataAdapter(comando);

                    DataTable dt = new DataTable();
                    cmd.Fill(dt);
                    GdPedidos.DataSource = (dt);
                    GdPedidos.DataBind();
                    bd.Close();




                }
                catch (Exception ex)
                {

                }

            }
            else
            {
                lblmensaje.Text = "Este pedido no se encuentra registrado";
                lblmensaje.Visible = true;
                //GdPedidos.Columns.Clear();
               
            }

        }

        protected void btnMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
    }
}
