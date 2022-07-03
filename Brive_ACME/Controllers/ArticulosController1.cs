using Brive_ACME.Datos;
using Brive_ACME.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Brive_ACME.Controllers
{
    public class ArticulosController1 : Controller
    {

        ArticuloDatos admin = new ArticuloDatos();
        // GET: ArticulosController1
        public ActionResult Index()
        {
            IEnumerable<Articulo> lista = admin.Consultar();
            return View(lista);
        }

        // GET: ArticulosController1/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: ArticulosController1/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ArticulosController1/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: ArticulosController1/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: ArticulosController1/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: ArticulosController1/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: ArticulosController1/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}
