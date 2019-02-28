package Mapeos;
// Generated 08/02/2019 09:56:35 by Hibernate Tools 4.3.1



/**
 * Aspirantes generated by hbm2java
 */
public class Aspirantes  implements java.io.Serializable {


     private AspirantesId id;
     private String nombres;
     private String apellidos;
     private String direccion;
     private String fnac;
     private String sexo;
     private String examenMedico;
     private String documentacionOk;

    public Aspirantes() {
    }

	
    public Aspirantes(AspirantesId id, String nombres, String apellidos, String direccion, String fnac, String sexo) {
        this.id = id;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.direccion = direccion;
        this.fnac = fnac;
        this.sexo = sexo;
    }
    public Aspirantes(AspirantesId id, String nombres, String apellidos, String direccion, String fnac, String sexo, String examenMedico, String documentacionOk) {
       this.id = id;
       this.nombres = nombres;
       this.apellidos = apellidos;
       this.direccion = direccion;
       this.fnac = fnac;
       this.sexo = sexo;
       this.examenMedico = examenMedico;
       this.documentacionOk = documentacionOk;
    }

    public Aspirantes(String dni, String nom, String apellido, String direccion, String fecha_nac, String sexo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
   
    public AspirantesId getId() {
        return this.id;
    }
    
    public void setId(AspirantesId id) {
        this.id = id;
    }
    public String getNombres() {
        return this.nombres;
    }
    
    public void setNombres(String nombres) {
        this.nombres = nombres;
    }
    public String getApellidos() {
        return this.apellidos;
    }
    
    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }
    public String getDireccion() {
        return this.direccion;
    }
    
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    public String getFnac() {
        return this.fnac;
    }
    
    public void setFnac(String fnac) {
        this.fnac = fnac;
    }
    public String getSexo() {
        return this.sexo;
    }
    
    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
    public String getExamenMedico() {
        return this.examenMedico;
    }
    
    public void setExamenMedico(String examenMedico) {
        this.examenMedico = examenMedico;
    }
    public String getDocumentacionOk() {
        return this.documentacionOk;
    }
    
    public void setDocumentacionOk(String documentacionOk) {
        this.documentacionOk = documentacionOk;
    }




}


