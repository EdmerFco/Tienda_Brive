﻿namespace Brive_ACME.Models
{
    public class Articulo
    {

        public int idArticulo { get; set; }
        public int codigo { get; set; }
        public string? nombre { get; set; }
        public decimal Precio_Venta { get; set; }
        public int idCategoria { get; set; }
        public int idSocursal { get; set; }
        public int Cantidad { get; set; }
    }
}
