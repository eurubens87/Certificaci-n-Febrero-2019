package Mapeos;
// Generated 08/02/2019 09:56:35 by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Torneos generated by hbm2java
 */
public class Torneos  implements java.io.Serializable {


     private TorneosId id;
     private String nombre;
     private Date fecha;

    public Torneos() {
    }

	
    public Torneos(TorneosId id) {
        this.id = id;
    }
    public Torneos(TorneosId id, String nombre, Date fecha) {
       this.id = id;
       this.nombre = nombre;
       this.fecha = fecha;
    }
   
    public TorneosId getId() {
        return this.id;
    }
    
    public void setId(TorneosId id) {
        this.id = id;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public Date getFecha() {
        return this.fecha;
    }
    
    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }




}


