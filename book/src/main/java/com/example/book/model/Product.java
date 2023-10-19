package com.example.book.model;

public class Product {
    private String idSach;
    private String idLoai;
    private String tenSach;
    private String loaiSach;
    private double giaSach;
    private String moTa;
    private String image;

    public Product() {

    }

    public Product(String idSach, String idLoai, String tenSach, String loaiSach, double giaSach, String moTa, String image) {
        this.idSach = idSach;
        this.idLoai = idLoai;
        this.tenSach = tenSach;
        this.loaiSach = loaiSach;
        this.giaSach = giaSach;
        this.moTa = moTa;
        this.image = image;
    }


    public String getIdSach() {
        return idSach;
    }

    public void setIdSach(String idSach) {
        this.idSach = idSach;
    }

    public String getIdLoai() {
        return idLoai;
    }

    public void setIdLoai(String idLoai) {
        this.idLoai = idLoai;
    }

    public String getTenSach() {
        return tenSach;
    }

    public void setTenSach(String tenSach) {
        this.tenSach = tenSach;
    }

    public String getLoaiSach() {
        return loaiSach;
    }

    public void setLoaiSach(String loaiSach) {
        this.loaiSach = loaiSach;
    }

    public double getGiaSach() {
        return giaSach;
    }

    public void setGiaSach(double giaSach) {
        this.giaSach = giaSach;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String image) {
        this.image = moTa;
    }
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Product [idSach=" + idSach + ", idLoai=" + idLoai + ", tenSach=" + tenSach + ", loaiSach=" + loaiSach
                + ", giaSach=" + giaSach + ", moTa=" + moTa + ", image=" + image + "]";
    }

    
    

}