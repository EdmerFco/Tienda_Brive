namespace Brive_ACME.Models
{
    public class Articulo
    {

        public int idArticulo { get; set; }
        public int codigo { get; set; }
        public string? nombre { get; set; }
        public decimal Precio_Venta { get; set; }
        public string? Estado { get; set; }
        public int idCategoria { get; set; }
    }
}
