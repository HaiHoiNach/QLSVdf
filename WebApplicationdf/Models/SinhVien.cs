using System;
using System.Collections.Generic;

namespace WebApplicationdf.Models
{
    public partial class SinhVien
    {
        public int SinhVienId { get; set; }
        public string? TenSinhVien { get; set; }
        public int? Tuoi { get; set; }
        public int? LopId { get; set; }

        public virtual Lop? Lop { get; set; }
    }
}
