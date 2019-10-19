using project_for_devops.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace project_for_devops.Controllers
{
    public class patientController : Controller
    {
        patient_data db = new patient_data();

        [Authorize]
        // GET: patient
        public ActionResult Index()
        {
            return View();
        }

        [Authorize]
        [HttpGet]
        public ActionResult add()
        {
            return View();
        }
        [Authorize]
        [HttpPost]
        public ActionResult add(patient p)
        {
            ObjectParameter param = new ObjectParameter("patient_Id_out", typeof(Int32));
            db.add_patient(p.patient_Name, p.gender, p.marital_status, p.age, p.phone_no, p.address, param);
            this.db.SaveChanges();
            ViewBag.Message = "Patient registered Successfully";
            ModelState.Clear();
            return View();
        }
        [Authorize]
        [HttpGet]
        public ActionResult view()
        {
            List<view_patient_Result> list = new List<view_patient_Result>();
            list = db.view_patient(0).ToList();
            return View(list);
        }
        [Authorize]
        [HttpGet]
        public ActionResult delete(int id)
        {
            db.delete_patient(id);
            return RedirectToAction("view");
        }
        [Authorize]
        [HttpGet]
        public ActionResult update(int id)
        {
            view_Id_Result ds = new view_Id_Result();
            ds = db.view_Id(id).FirstOrDefault();
            return View(ds);
        }
       
    }
}