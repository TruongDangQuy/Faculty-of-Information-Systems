/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

/**
 *
 * @author Adminstrator
 */
public class UserAccount   {
    private String Email;
    private String MatKhau;   
    private String QuyenHan;
    public UserAccount(){
        
    }  
    public UserAccount(String Email, String MatKhau,String QuyenHan)
    {
        this.Email = Email;
        this.MatKhau = MatKhau;
        this.QuyenHan=QuyenHan;
    }    
    public UserAccount( String Email, String MatKhau){
        
        this.Email = Email;
        this.MatKhau=MatKhau;
     }
     public UserAccount(UserAccount ust){
         this.Email = ust.Email;
        this.MatKhau = ust.MatKhau;
        this.QuyenHan=ust.QuyenHan;
     }
    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getMatKhau() {
        return MatKhau;
    }

    public void setMatKhau(String MatKhau) {
        this.MatKhau = MatKhau;
    }

    public String getQuyenHan() {
        return QuyenHan;
    }

    public void setQuyenHan(String QuyenHan) {
        this.QuyenHan = QuyenHan;
    }
    
}
