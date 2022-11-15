/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import com.sun.org.apache.xerces.internal.impl.dv.xs.DateTimeDV;
import java.sql.Timestamp;


/**
 *
 * @author Adminstrator
 */
public class UserBlog {
    private String MaBaiViet;
    private String TieuDe;
    private String HinhAnh;
    private String NoiDung;
    private Timestamp NgayCapNhat;
    public UserBlog(){
        
    }

    public UserBlog(String MaBaiViet, String TieuDe, String HinhAnh, String NoiDung, Timestamp NgayCapNhat) {
        this.MaBaiViet = MaBaiViet;
        this.TieuDe = TieuDe;
        this.HinhAnh = HinhAnh;
        this.NoiDung = NoiDung;
        this.NgayCapNhat = NgayCapNhat;
    }

    public String getMaBaiViet() {
        return MaBaiViet;
    }

    public void setMaBaiViet(String MaBaiViet) {
        this.MaBaiViet = MaBaiViet;
    }

    public String getTieuDe() {
        return TieuDe;
    }

    public void setTieuDe(String TieuDe) {
        this.TieuDe = TieuDe;
    }

    public String getHinhAnh() {
        return HinhAnh;
    }

    public void setHinhAnh(String HinhAnh) {
        this.HinhAnh = HinhAnh;
    }

    public String getNoiDung() {
        return NoiDung;
    }

    public void setNoiDung(String NoiDung) {
        this.NoiDung = NoiDung;
    }
    
    public Timestamp getNgayCapNhat() {
        return NgayCapNhat;
    }

    public void setNgayCapNhat(Timestamp NgayCapNhat) {
        this.NgayCapNhat = NgayCapNhat;
    }

    
    
}
