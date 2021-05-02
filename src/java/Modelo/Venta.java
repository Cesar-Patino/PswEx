
package Modelo;

import java.sql.Timestamp;

public class Venta {
    
    private int id_venta;
    private String cliente;
    private Timestamp fecha;

    public Venta(int id_venta, String cliente, Timestamp fecha) {
        this.id_venta = id_venta;
        this.cliente = cliente;
        this.fecha = fecha;
    }

    public int getId_venta() {
        return id_venta;
    }

    public void setId_venta(int id_venta) {
        this.id_venta = id_venta;
    }

    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public Timestamp getFecha() {
        return fecha;
    }

    public void setFecha(Timestamp fecha) {
        this.fecha = fecha;
    }
    
    
    
}
