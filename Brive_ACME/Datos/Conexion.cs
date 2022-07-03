
using System.Data.SqlClient;

namespace Brive_ACME.Datos

{
    public class Conexion
    {
        protected SqlConnection? cnn;
        protected void Conectar()
        {
            try
            {
                cnn = new SqlConnection("Data Source=PC-EDMER;Initial Catalog=db_ACME;User ID=sa;Password=EDMERfco2022;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
                cnn.Open();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.StackTrace);
            }
        }

        protected void Desconexion()
        {
            try
            {
                cnn.Close();
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.StackTrace);
            }
        }
    }
}
