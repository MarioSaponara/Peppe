//------------------------------------------------------------------------------
// <auto-generated>
//     Codice generato da un modello.
//
//     Le modifiche manuali a questo file potrebbero causare un comportamento imprevisto dell'applicazione.
//     Se il codice viene rigenerato, le modifiche manuali al file verranno sovrascritte.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PCarpet
{
    using System;
    using System.Collections.Generic;
    
    public partial class stop
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public stop()
        {
            this.payment = new HashSet<payment>();
        }
    
        public int id { get; set; }
        public DateTime start { get; set; }
        public DateTime finish { get; set; }
        public int id_car { get; set; }
        public int id_slot { get; set; }
    
        public virtual car car { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<payment> payment { get; set; }
        public virtual slot slot { get; set; }
    }
}
