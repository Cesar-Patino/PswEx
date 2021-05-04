
package Modelo;


public class Producto {
    
    private int id_prod;
    private String nom, img;
    private double precio;

    public Producto(int id_prod, String nom, String img, double precio) {
        this.id_prod = id_prod;
        this.nom = nom;
        this.img = img;
        this.precio = precio;
    }

    public int getId_prod() {
        return id_prod;
    }

    public void setId_prod(int id_prod) {
        this.id_prod = id_prod;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    
    
    
}
