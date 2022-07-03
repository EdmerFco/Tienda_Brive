using Brive_ACME.Models;
using System.Data.SqlClient;

namespace Brive_ACME.Datos
{
    public class ArticuloDatos : Conexion
    {
        public IEnumerable<Articulo> Consultar()
        {
            List<Articulo> articulos = new List<Articulo>();
            Conectar();
            try
            {
                SqlCommand comando = new SqlCommand("Consultar_Articulo", cnn);
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                SqlDataReader lector = comando.ExecuteReader();
                while (lector.Read())
                {
                    Articulo modelo = new Articulo()
                    {
                        idArticulo = int.Parse(lector[0].ToString()),
                        codigo = int.Parse(lector[1].ToString()),
                        nombre = lector[2].ToString(),
                        Precio_Venta = int.Parse(lector[3].ToString()),
                        Estado = lector[4].ToString(),
                        idCategoria = int.Parse(lector[5].ToString())
                    };
                    articulos.Add(modelo);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.StackTrace);
            }
            finally
            {
                Desconexion();
            }
            return articulos;
        }
    }
}