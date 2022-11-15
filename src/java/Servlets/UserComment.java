/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.sql.Timestamp;

/**
 *
 * @author Adminstrator
 */
public class UserComment {
    private int MaBinhLuan;
    private String Email;
    private String MaBaiViet;
    private Timestamp NgayDang;
    private String NoiDung;
    public UserComment(){
        
    }

    public UserComment(int MaBinhLuan, String Email, String MaBaiViet, Timestamp NgayDang, String NoiDung) {
        this.MaBinhLuan = MaBinhLuan;
        this.Email = Email;
        this.MaBaiViet = MaBaiViet;
        this.NgayDang = NgayDang;
        this.NoiDung = NoiDung;
    }

    public int getMaBinhLuan() {
        return MaBinhLuan;
    }

    public void setMaBinhLuan(int MaBinhLuan) {
        this.MaBinhLuan = MaBinhLuan;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getMaBaiViet() {
        return MaBaiViet;
    }

    public void setMaBaiViet(String MaBaiViet) {
        this.MaBaiViet = MaBaiViet;
    }

    public Timestamp getNgayDang() {
        return NgayDang;
    }

    public void setNgayDang(Timestamp NgayDang) {
        this.NgayDang = NgayDang;
    }

    public String getNoiDung() {
        return NoiDung;
    }

    public void setNoiDung(String NoiDung) {
        this.NoiDung = NoiDung;
    }
      
}
