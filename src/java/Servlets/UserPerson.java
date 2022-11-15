/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.sql.Date;

/**
 *
 * @author Adminstrator
 */
public class UserPerson {
    private int MaSV;
    private String Email;
    private String SoDienThoai;
    private String Ten;
    private Date NgayThangNamSinh;
    private String HinhAnh;
    public UserPerson(){
        
    }

    public UserPerson(int MaSV, String Email, String SoDienThoai, String Ten, Date NgayThangNamSinh, String HinhAnh) {
        this.MaSV = MaSV;
        this.Email = Email;
        this.SoDienThoai = SoDienThoai;
        this.Ten = Ten;
        this.NgayThangNamSinh = NgayThangNamSinh;
        this.HinhAnh = HinhAnh;
    }

    public int getMaSV() {
        return MaSV;
    }

    public void setMaSV(int MaSV) {
        this.MaSV = MaSV;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getSoDienThoai() {
        return SoDienThoai;
    }

    public void setSoDienThoai(String SoDienThoai) {
        this.SoDienThoai = SoDienThoai;
    }

    public String getTen() {
        return Ten;
    }

    public void setTen(String Ten) {
        this.Ten = Ten;
    }

    public Date getNgayThangNamSinh() {
        return NgayThangNamSinh;
    }

    public void setNgayThangNamSinh(Date NgayThangNamSinh) {
        this.NgayThangNamSinh = NgayThangNamSinh;
    }

    public String getHinhAnh() {
        return HinhAnh;
    }

    public void setHinhAnh(String HinhAnh) {
        this.HinhAnh = HinhAnh;
    }
    
}
