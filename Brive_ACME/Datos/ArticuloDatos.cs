using Brive_ACME.Models;
using System.Data;
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
                        idCategoria = int.Parse(lector[4].ToString()),
                        idSocursal = int.Parse(lector[5].ToString()),
                        Cantidad = int.Parse(lector[6].ToString())
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
        public Articulo ConssultarUNO(int id)
        {Articulo Articulo = new Articulo();
            Conectar();
            try
            {
                
                SqlCommand Comando = new SqlCommand("una_Articulo", cnn);
                Comando.CommandType = System.Data.CommandType.StoredProcedure;


                Comando.Parameters.AddWithValue("@id", id);
                SqlDataReader lector = Comando.ExecuteReader();

                while (lector.Read())
                {
                    Articulo = new Articulo()
                    {
                        idArticulo = int.Parse(lector[0].ToString()),
                        codigo = int.Parse(lector[1].ToString()),
                        nombre = lector[2].ToString(),
                        Precio_Venta = int.Parse(lector[3].ToString()),
                        idCategoria = int.Parse(lector[4].ToString())
                    };
                }
              
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.StackTrace);
            }
            finally
            {
                Desconexion();
            }

            return Articulo;

        }
        /////Metodo para buscar Articulo 
        ///
        public List<Busqueda> BuscarArticulo( string nombre)
        {
            List<Busqueda> articulo = new List<Busqueda>();
            Conectar();
            try
            {
                SqlCommand Comando = new SqlCommand("Buscar", cnn);
                Comando.CommandType = System.Data.CommandType.StoredProcedure;
                Comando.Parameters.AddWithValue("@nombre", nombre);
                SqlDataReader lector = Comando.ExecuteReader();
                while (lector.Read())
                {
                    Busqueda model = new Busqueda()
                    {
                        idArticulo = int.Parse(lector[0].ToString()),
                        codigo = int.Parse(lector[1].ToString()),
                        nombre = lector[2].ToString(),
                        Precio_Venta = decimal.Parse(lector[3].ToString()),
                        Cantidad = int.Parse(lector[4].ToString()),
                        Socusal_nombre = lector[5].ToString(),
                        ubicacion = lector[6].ToString()
                    };
                    articulo.Add(model);
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
            return articulo;
        }
    }
}