using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace CesdeCarga
{
    public class ConexionBD
    {
        SqlConnection bd;



        public ConexionBD()
        {

            try
            {
                //String Conexion, CadenaSin, stkey;
                //Encripcion objeto = new Encripcion();

                //Conexion = ConfigurationManager.AppSettings["CadenaConexion"];
                //stkey = ConfigurationManager.AppSettings["stkey"];
                //CadenaSin = objeto.Desencriptar(Conexion, stkey);
                bd = new SqlConnection("server=localhost\\SQLEXPRESS; database = CESDECARGA; integrated security =true ");
                //bd = new SqlConnection(CadenaSin);

            }
            catch (Exception ex)
            {

            }
        }


        public int ValidarUsuario(string Usuario, string Password)
        {
            int contador = 0;


            try
            {
                bd.Open();
                SqlCommand comando = new SqlCommand("sp_ConsultarUsuario", bd);
                comando.CommandType = System.Data.CommandType.StoredProcedure;

                comando.Parameters.Add(new SqlParameter("@Usuario ", Usuario));
                comando.Parameters.Add(new SqlParameter("@Password ", Password));

                SqlDataReader registros = comando.ExecuteReader();

                if (registros.Read())
                {
                    contador = 1;
                }

                bd.Close();
            }
            catch (Exception ex)
            {

            }
            return contador;

        }

        public string ValidarDatos(decimal documento)
        {
            string resultado = "";
            try
            {
                bd.Open();

                SqlCommand comando = new SqlCommand("sp_ConsultarDatos", bd);
                comando.CommandType = System.Data.CommandType.StoredProcedure;

                comando.Parameters.Add(new SqlParameter("@Documento", documento));
                SqlDataReader registros = comando.ExecuteReader();

                if (registros.Read())
                {
                    resultado = "El usuario es: " + registros.GetString(1) + " y la contraseña es: " + registros.GetString(2);
                }
                bd.Close();

            }
            catch (Exception ex)
            {

            }
            return resultado;

        }

        public string TraerCorreo(decimal documento)
        {
            string resultado = "";
            try
            {
                bd.Open();
                SqlCommand comando = new SqlCommand("sp_TraerCorreo", bd);
                comando.CommandType = System.Data.CommandType.StoredProcedure;

                comando.Parameters.Add(new SqlParameter("@Documento", documento));
                SqlDataReader registros = comando.ExecuteReader();

                if (registros.Read())
                {
                    resultado = registros.GetString(5);
                }
                bd.Close();

            }
            catch (Exception ex)
            {

            }
            return resultado;
        }

        public int ValidarPedido(int idPedido)
        {
            int contador = 0;
            try
            {

                bd.Open();
                SqlCommand comando = new SqlCommand("sp_ConsultarPedido", bd);
                comando.CommandType = System.Data.CommandType.StoredProcedure;

                comando.Parameters.Add(new SqlParameter("@idPedido", idPedido));
                SqlDataReader registros = comando.ExecuteReader();

                if (registros.Read())
                {
                    contador = 1;
                }
                bd.Close();

            }
            catch (Exception ex)
            {

            }
            return contador;

        }

        public int RegistrarPedido(int idPedido, string fechaPedido, int tipoPedido, decimal idCliente, string origen, string destino,
                                    string direcciondeCargue, string fechadeCargue, string horadeCargue, int contactocargueCelular, string direccionDescargue,
                                    string fechaDescargue, string horaDescargue, int contactoDescargueCelular, int valorcargueoDescargue, int tipoDeVehiculo,
                                    int Carroceria, int numeroDeEntrega, decimal pesoVolumen, string flete, int tarifa, string margen, decimal comercialCelular,
                                    string pedidoConfirmado, string Observaciones)
        {
            int contador = 0;
            try
            {

                bd.Open();
                SqlCommand comando = new SqlCommand("sp_AgregarPedido", bd);
                comando.CommandType = System.Data.CommandType.StoredProcedure;

                comando.Parameters.Add(new SqlParameter("@idPedido", idPedido));
                comando.Parameters.Add(new SqlParameter("@fechaPedido", fechaPedido));
                comando.Parameters.Add(new SqlParameter("@tipoPedido", tipoPedido));
                comando.Parameters.Add(new SqlParameter("@idCliente", idCliente));
                comando.Parameters.Add(new SqlParameter("@origen", origen));
                comando.Parameters.Add(new SqlParameter("@destino", destino));
                comando.Parameters.Add(new SqlParameter("@direcciondeCargue", direcciondeCargue));
                comando.Parameters.Add(new SqlParameter("@fechadeCargue", fechadeCargue));
                comando.Parameters.Add(new SqlParameter("@horadeCargue", horadeCargue));
                comando.Parameters.Add(new SqlParameter("@contactocargueCelular", contactocargueCelular));
                comando.Parameters.Add(new SqlParameter("@direccionDescargue", direccionDescargue));
                comando.Parameters.Add(new SqlParameter("@fechaDescargue", fechaDescargue));
                comando.Parameters.Add(new SqlParameter("@horaDescargue", horaDescargue));
                comando.Parameters.Add(new SqlParameter("@contactoDescargueCelular", contactoDescargueCelular));
                comando.Parameters.Add(new SqlParameter("@valorcargueoDescargue", valorcargueoDescargue));
                comando.Parameters.Add(new SqlParameter("@tipoDeVehiculo", tipoDeVehiculo));
                comando.Parameters.Add(new SqlParameter("@Carroceria", Carroceria));
                comando.Parameters.Add(new SqlParameter("@numeroDeEntrega", numeroDeEntrega));
                comando.Parameters.Add(new SqlParameter("@pesoVolumen", pesoVolumen));
                comando.Parameters.Add(new SqlParameter("@flete", flete));
                comando.Parameters.Add(new SqlParameter("@tarifa", tarifa));
                comando.Parameters.Add(new SqlParameter("@margen", margen));
                comando.Parameters.Add(new SqlParameter("@comercialCelular", comercialCelular));
                comando.Parameters.Add(new SqlParameter("@pedidoConfirmado", pedidoConfirmado));
                comando.Parameters.Add(new SqlParameter("@Observaciones", Observaciones));
                SqlDataReader registros = comando.ExecuteReader();
                try
                {
                    if (registros.Read())
                    {
                        contador = 1;
                    }
                    bd.Close();
                }
                catch (Exception ex)
                {

                }


            }
            catch (Exception ex)
            {

            }
            return contador;
        }



        public int GrabarCombo(int IdCarroceria, string NombreCarroceria)

        {
            int contador = 0;
            try
            {

                bd.Open();
                SqlCommand comando = new SqlCommand("sp_AgregarCombo", bd);
                comando.CommandType = System.Data.CommandType.StoredProcedure;


                comando.Parameters.Add(new SqlParameter("@IdCarroceria", IdCarroceria));
                comando.Parameters.Add(new SqlParameter("@NombreCarroceria", NombreCarroceria));

                SqlDataReader registros = comando.ExecuteReader();
                try
                {
                    if (registros.Read())
                    {
                        contador = 1;
                    }
                    bd.Close();
                }
                catch (Exception ex)
                {

                }
            }
            catch (Exception ex)
            {

            }
            return contador;
        }

        public int GrabarCombo1(int IdSolicitud, string NombreSolicitud)
        {
            int contador = 0;
            try
            {
                bd.Open();
                SqlCommand comando = new SqlCommand("sp_AgregarCombo1", bd);
                comando.CommandType = System.Data.CommandType.StoredProcedure;

                comando.Parameters.Add(new SqlParameter("@IdSolicitud", IdSolicitud));
                comando.Parameters.Add(new SqlParameter("@NombreSolicitud", NombreSolicitud));
                SqlDataReader registros = comando.ExecuteReader();
                try
                {
                    if (registros.Read())
                    {
                        contador = 1;
                    }
                    bd.Close();
                }
                catch (Exception ex)
                {

                }
            }
            catch (Exception ex)
            {

            }
            return contador;

        }

        public int GrabarCombo2(int IdVehiculo, string NombreVehiculo, string Modelo, string Placa)
        {
            int contador = 0;
            try
            {
                bd.Open();
                SqlCommand comando = new SqlCommand("sp_AgregarCombo2", bd);
                comando.CommandType = System.Data.CommandType.StoredProcedure;

                comando.Parameters.Add(new SqlParameter("@IdTipoVehiculo", IdVehiculo));
                comando.Parameters.Add(new SqlParameter("@NombreVehiculo", NombreVehiculo));
                comando.Parameters.Add(new SqlParameter("@Modelo", Modelo));
                comando.Parameters.Add(new SqlParameter("@Placa", Placa));
                SqlDataReader registros = comando.ExecuteReader();
                try
                {
                    if (registros.Read())
                    {
                        contador = 1;
                    }
                    bd.Close();
                }
                catch (Exception ex)
                {

                }
            }
            catch (Exception ex)
            {

            }
            return contador;

        }
        public int GrabarCombo3(decimal IdRol, string NombreRol)
        {
            int contador = 0;
            try
            {
                bd.Open();
                SqlCommand comando = new SqlCommand("sp_AgregarCombo3", bd);
                comando.CommandType = System.Data.CommandType.StoredProcedure;

                comando.Parameters.Add(new SqlParameter("@IdRol", IdRol));
                comando.Parameters.Add(new SqlParameter("@NombreRol", NombreRol));
                SqlDataReader registros = comando.ExecuteReader();
                try
                {
                    if (registros.Read())
                    {
                        contador = 1;
                    }
                    bd.Close();
                }
                catch (Exception ex)
                {

                }
            }
            catch (Exception ex)
            {

            }
            return contador;

        }

        public int GrabarPersona(decimal documento, string PrimerNombre, string SegundoNombre, string PrimerApellido, string SegundoApellido, string Correo, int IdRol)
        {
            int contador = 0;
            try
            {
                bd.Open();
                SqlCommand comando = new SqlCommand("sp_AgregarPersona", bd);
                comando.CommandType = System.Data.CommandType.StoredProcedure;

                comando.Parameters.Add(new SqlParameter("@Documento", documento));
                comando.Parameters.Add(new SqlParameter("@PrimerNombre", PrimerNombre));
                comando.Parameters.Add(new SqlParameter("@SegundoNombre", SegundoNombre));
                comando.Parameters.Add(new SqlParameter("@PrimerApelido", PrimerApellido));
                comando.Parameters.Add(new SqlParameter("@SegundoApellido", SegundoApellido));
                comando.Parameters.Add(new SqlParameter("@Correo", Correo));
                comando.Parameters.Add(new SqlParameter("@IdRol", IdRol));
                SqlDataReader registros = comando.ExecuteReader();
                try
                {
                    if (registros.Read())
                    {
                        contador = 1;
                    }
                    bd.Close();
                }
                catch (Exception ex)
                {

                }
            }
            catch (Exception ex)
            {

            }
            return contador;
        }

        public DataSet Consultar(string strSQL)
        {
            bd.Open();
            SqlCommand cmd = new SqlCommand(strSQL, bd);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            bd.Close();
            return ds;

        }

        public int AgregarUsuario(decimal IdUsuario, string Usuario, string Password)
        {
            int contador = 0;
            try
            {
                bd.Open();
                SqlCommand comando = new SqlCommand("sp_AgregarUsuario", bd);
                comando.CommandType = System.Data.CommandType.StoredProcedure;

                comando.Parameters.Add(new SqlParameter("@Id_Usuario", IdUsuario));
                comando.Parameters.Add(new SqlParameter("@Usuario", Usuario));
                comando.Parameters.Add(new SqlParameter("@Password", Password));

                SqlDataReader registros = comando.ExecuteReader();
                try
                {
                    if (registros.Read())
                    {
                        contador = 1;
                    }
                    bd.Close();
                }
                catch (Exception ex)
                {

                }
            }
            catch (Exception ex)
            {

            }
            return contador;
        }

        //public string ValidarPersona(decimal documento)
        //{
        //    int bandera = 0;
        //    try
        //    {
        //        bd.Open();

        //        SqlCommand comando = new SqlCommand("sp_ConsultarDatos", bd);
        //        comando.CommandType = System.Data.CommandType.StoredProcedure;

        //        comando.Parameters.Add(new SqlParameter("@documento", documento));
        //        SqlDataReader registros = comando.ExecuteReader();

        //        if (registros.Read())
        //        {
        //            bandera = 1;
        //        }
        //        bd.Close();

        //    }
        //    catch (Exception ex)
        //    {

        //    }
        //    return bandera;

        //}

    }
}

 