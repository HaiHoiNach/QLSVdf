using System;
using System.Collections.Generic;

namespace WebApplicationdf.Models
{
    public partial class Khoa
    {
        public Khoa()
        {
            Lops = new HashSet<Lop>();
        }

        public int KhoaId { get; set; }
        public string? TenKhoa { get; set; }

        public virtual ICollection<Lop> Lops { get; set; }
    }
}
