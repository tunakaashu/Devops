//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace project_for_devops.Models
{
    using System;
    using System.ComponentModel.DataAnnotations;

    public partial class view_Id_Result
    {
        [Key]
        public int patient_Id { get; set; }
        public string patient_Name { get; set; }
        public string gender { get; set; }
        public string marital_status { get; set; }
        public Nullable<int> age { get; set; }
        public Nullable<long> phone_no { get; set; }
        public string address { get; set; }
    }
}
