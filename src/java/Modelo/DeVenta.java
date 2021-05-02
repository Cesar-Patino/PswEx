
package Modelo;


public class DeVenta {
    
    private int id_venta, id_prod;
    private double cant, desc;
    private Producto producto;
    private Venta venta;

    public DeVenta(int id_venta, int id_prod, double cant, double desc, Producto producto, Venta venta) {
        this.id_venta = id_venta;
        this.id_prod = id_prod;
        this.cant = cant;
        this.desc = desc;
        this.producto = producto;
        this.venta = venta;
    }

    public int getId_venta() {
        return id_venta;
    }

    public void setId_venta(int id_venta) {
        this.id_venta = id_venta;
    }

    public int getId_prod() {
        return id_prod;
    }

    public void setId_prod(int id_prod) {
        this.id_prod = id_prod;
    }

    public double getCant() {
        return cant;
    }

    public void setCant(double cant) {
        this.cant = cant;
    }

    public double getDesc() {
        return desc;
    }

    public void setDesc(double desc) {
        this.desc = desc;
    }

    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }

    public Venta getVenta() {
        return venta;
    }

    public void setVenta(Venta venta) {
        this.venta = venta;
    }
    
    
    
}
