package Mapeos;
// Generated 08/02/2019 09:56:35 by Hibernate Tools 4.3.1



/**
 * TorneosId generated by hbm2java
 */
public class TorneosId  implements java.io.Serializable {


     private int idTorneos;
     private int sedesIdSedes;

    public TorneosId() {
    }

    public TorneosId(int idTorneos, int sedesIdSedes) {
       this.idTorneos = idTorneos;
       this.sedesIdSedes = sedesIdSedes;
    }
   
    public int getIdTorneos() {
        return this.idTorneos;
    }
    
    public void setIdTorneos(int idTorneos) {
        this.idTorneos = idTorneos;
    }
    public int getSedesIdSedes() {
        return this.sedesIdSedes;
    }
    
    public void setSedesIdSedes(int sedesIdSedes) {
        this.sedesIdSedes = sedesIdSedes;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof TorneosId) ) return false;
		 TorneosId castOther = ( TorneosId ) other; 
         
		 return (this.getIdTorneos()==castOther.getIdTorneos())
 && (this.getSedesIdSedes()==castOther.getSedesIdSedes());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getIdTorneos();
         result = 37 * result + this.getSedesIdSedes();
         return result;
   }   


}


