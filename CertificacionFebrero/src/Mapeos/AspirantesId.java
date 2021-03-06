package Mapeos;
// Generated 08/02/2019 09:56:35 by Hibernate Tools 4.3.1



/**
 * AspirantesId generated by hbm2java
 */
public class AspirantesId  implements java.io.Serializable {


     private int dni;
     private String escuelaNombreEscuela;

    public AspirantesId() {
    }

    public AspirantesId(int dni, String escuelaNombreEscuela) {
       this.dni = dni;
       this.escuelaNombreEscuela = escuelaNombreEscuela;
    }
   
    public int getDni() {
        return this.dni;
    }
    
    public void setDni(int dni) {
        this.dni = dni;
    }
    public String getEscuelaNombreEscuela() {
        return this.escuelaNombreEscuela;
    }
    
    public void setEscuelaNombreEscuela(String escuelaNombreEscuela) {
        this.escuelaNombreEscuela = escuelaNombreEscuela;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof AspirantesId) ) return false;
		 AspirantesId castOther = ( AspirantesId ) other; 
         
		 return (this.getDni()==castOther.getDni())
 && ( (this.getEscuelaNombreEscuela()==castOther.getEscuelaNombreEscuela()) || ( this.getEscuelaNombreEscuela()!=null && castOther.getEscuelaNombreEscuela()!=null && this.getEscuelaNombreEscuela().equals(castOther.getEscuelaNombreEscuela()) ) );
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getDni();
         result = 37 * result + ( getEscuelaNombreEscuela() == null ? 0 : this.getEscuelaNombreEscuela().hashCode() );
         return result;
   }   


}


