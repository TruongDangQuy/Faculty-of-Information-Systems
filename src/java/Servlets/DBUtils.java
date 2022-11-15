/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Adminstrator
 */
public class DBUtils {
     public static UserAccount findUser(Connection conn, String Email, String MatKhau ) throws SQLException {
        String sql = " select t.Email,t.MatKhau,t.QuyenHan from websitehtttvt.taikhoan t  where t.Email=? and t.MatKhau=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, Email);
        pstm.setString(2, MatKhau);
        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            UserAccount user = new UserAccount();
            user.setEmail(rs.getString("Email"));
            user.setMatKhau(rs.getString("MatKhau"));
            user.setQuyenHan(rs.getString("QuyenHan"));
            return user;
        }
        return null;
    }
    public static List<UserPerson> selectUserPersons(Connection conn, String Email) throws SQLException {
        String sql = "select k.Email,k.SoDienThoai,k.Ten,k.NgayThangNamSinh,k.HinhAnh from websitehtttvt.taikhoan t join websitehtttvt.sinhvien k "
                + "where t.Email = k.Email and k.Email=?  ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, Email);
        ResultSet rs = pstm.executeQuery();
        List<UserPerson> list = new ArrayList<UserPerson>();
        while (rs.next()) {
            Email = rs.getString("Email");
            String SoDienThoai=rs.getString("SoDienThoai");
            String Ten = rs.getString("Ten");
            Date NgayThangNamSinh = rs.getDate("NgayThangNamSinh");
            String HinhAnh = rs.getString("HinhAnh");
            UserPerson userperson = new UserPerson();
            userperson.setEmail(Email);
            userperson.setSoDienThoai(SoDienThoai);
            userperson.setTen(Ten);
            userperson.setNgayThangNamSinh(NgayThangNamSinh);
            userperson.setEmail(Email);
            userperson.setHinhAnh(HinhAnh);
            list.add(userperson);
        }
        return list;
    }

    public static UserPerson getUserPerson(Connection conn, String Email) throws SQLException {
        String sql = "select*from websitehtttvt.sinhvien where Email=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, Email);
        ResultSet rs = pstm.executeQuery();
        UserPerson usp = new UserPerson();
        while (rs.next()) {
            usp.setEmail(rs.getString("Email"));
            usp.setSoDienThoai(rs.getString("SoDienThoai"));
            usp.setTen(rs.getString("Ten"));
            usp.setNgayThangNamSinh(rs.getDate("NgayThangNamSinh"));
            usp.setHinhAnh(rs.getString("HinhAnh"));
        }
        return usp;
    }

    public static void updateUserPerson(Connection conn, String Email,String SoDienThoai, String Ten, String NgayThangNamSinh,String HinhAnh) throws SQLException {
        String sql = "update websitehtttvt.sinhvien set SoDienThoai=?, Ten=?, NgayThangNamSinh=?, HinhAnh=? where Email=? ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, SoDienThoai);
        pstm.setString(2, Ten);
        pstm.setString(3, NgayThangNamSinh);
        pstm.setString(4, HinhAnh);
        pstm.setString(5, Email);
             
        pstm.executeUpdate();
    }
    public static void DeleteUserPerson(Connection conn, String Email) throws SQLException {
        String sql = "delete from websitehtttvt.sinhvien where Email = ? ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, Email);
        pstm.executeUpdate();
    }
    public static List<UserBlog> selectUserBlog(Connection conn) throws SQLException {
        String sql = "select*from websitehtttvt.baiviet";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<UserBlog> list = new ArrayList<UserBlog>();
        while (rs.next()) {
            String MaBaiViet = rs.getString("MaBaiViet");
            String TieuDe=rs.getString("TieuDe");
            String HinhAnh = rs.getString("HinhAnh");
            String NoiDung = rs.getString("NoiDung");
            Timestamp NgayCapNhat = rs.getTimestamp("NgayCapNhat");
            UserBlog userblog = new UserBlog();
            userblog.setMaBaiViet(MaBaiViet);
            userblog.setTieuDe(TieuDe);
            userblog.setHinhAnh(HinhAnh);
            userblog.setNoiDung(NoiDung);
            userblog.setNgayCapNhat(NgayCapNhat);
            
            list.add(userblog);
        }
        return list;
    }
    public static void DeleteUserBlog(Connection conn, String MaBaiViet) throws SQLException {
        String sql = "delete from websitehtttvt.baiviet where MaBaiViet = ? ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, MaBaiViet);
        pstm.executeUpdate();
    }

    public static List<UserBlog> SearchBlog(Connection conn, String txtSearch) throws SQLException {
        String sql = "select* from websitehtttvt.baiviet where TieuDe like ?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, "%" +txtSearch+ "%");
        ResultSet rs = pstm.executeQuery();
        List<UserBlog> list = new ArrayList<UserBlog>();
        while (rs.next()) {
            String MaBaiViet = rs.getString("MaBaiViet");
            String TieuDe = rs.getString("TieuDe");
            String HinhAnh = rs.getString("HinhAnh");
            String NoiDung = rs.getString("NoiDung");
            Timestamp NgayCapNhat=rs.getTimestamp("NgayCapNhat");
            UserBlog blog = new UserBlog();
            blog.setMaBaiViet(MaBaiViet);
            blog.setTieuDe(TieuDe);
            blog.setHinhAnh(HinhAnh);
            blog.setNoiDung(NoiDung);
            blog.setNgayCapNhat(NgayCapNhat);
            list.add(blog);
        }
        return list;
    }

    public static void insertBlog(Connection conn,String TieuDe, String HinhAnh, String NoiDung) throws SQLException {
        String sql = "insert into websitehtttvt.baiviet(TieuDe,HinhAnh,NoiDung) VALUES (?,?,?);";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, TieuDe);
        pstm.setString(2, HinhAnh);
        pstm.setString(3, NoiDung);
        
        pstm.executeUpdate();
    }

    public static UserBlog getBlogEdit(Connection conn, String MaBaiViet) throws SQLException {
        String sql = "select*from websitehtttvt.baiviet where MaBaiViet=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, MaBaiViet);
        ResultSet rs = pstm.executeQuery();
        UserBlog up = new UserBlog();
        while (rs.next()) {
            up.setMaBaiViet(rs.getString("MaBaiViet"));
            up.setTieuDe(rs.getString("TieuDe"));
            up.setHinhAnh(rs.getString("HinhAnh"));
            up.setNoiDung(rs.getString("NoiDung"));
            up.setNgayCapNhat(rs.getTimestamp("NgayCapNhat"));
        }
        return up;
    }
    public static void updateBlog(Connection conn,String MaBaiViet,String TieuDe, String HinhAnh, String NoiDung) throws SQLException {
        String sql = " UPDATE `websitehtttvt`.`baiviet` SET `TieuDe` = ?, `HinhAnh` = ?, `NoiDung` = ? WHERE (`MaBaiViet` = ?); ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, TieuDe);
        pstm.setString(2, HinhAnh);
        pstm.setString(3, NoiDung);
        pstm.setString(4, MaBaiViet);
   
        pstm.executeUpdate();
    }
    public static UserBlog getBlogByMaBaiViet(Connection conn, String MaBaiViet) throws SQLException {
        String sql = "select*from websitehtttvt.baiviet where MaBaiViet=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, MaBaiViet);
        ResultSet rs = pstm.executeQuery();
        UserBlog up = new UserBlog();
        while (rs.next()) {
            up.setMaBaiViet(rs.getString("MaBaiViet"));
            up.setTieuDe(rs.getString("TieuDe"));
            up.setHinhAnh(rs.getString("HinhAnh"));
            up.setNoiDung(rs.getString("NoiDung"));
            up.setNgayCapNhat(rs.getTimestamp("NgayCapNhat"));
        }
        return up;
    }
    public static List<UserAccount> selectTaiKhoan(Connection conn) throws SQLException {
        String sql = "select t.Email,t.MatKhau,t.QuyenHan from websitehtttvt.taikhoan t";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<UserAccount> list = new ArrayList<UserAccount>();
        while (rs.next()) {
            String Email=rs.getString("Email");
            String MatKhau = rs.getString("MatKhau");
            String QuyenHan=rs.getString("QuyenHan");
            UserAccount account = new UserAccount();
            account.setEmail(Email);
            account.setMatKhau(MatKhau);
            account.setQuyenHan(QuyenHan);
            
            list.add(account);
        }
        return list;
    }
    public static void DeleteTaiKhoan(Connection conn, String Email) throws SQLException {
        String sql = "delete from websitehtttvt.taikhoan where Email = ? ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, Email);
        pstm.executeUpdate();
    }

    public static List<UserAccount> SearchTaiKhoan(Connection conn, String Email) throws SQLException {
        String sql = "select* from websitehtttvt.taikhoan where Email like '%" + Email + "%'";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<UserAccount> list = new ArrayList<UserAccount>();
        while (rs.next()) {
            Email = rs.getString("Email");
            String MatKhau = rs.getString("MatKhau");
            String QuyenHan=rs.getString("QuyenHan");
            UserAccount account = new UserAccount();
            account.setEmail(Email);
            account.setMatKhau(MatKhau);
            account.setQuyenHan(QuyenHan);
            list.add(account);
        }
        return list;
    }

    public static void insertTaiKhoan(Connection conn,UserAccount usr) throws SQLException {
        String sql = "insert into websitehtttvt.taikhoan(Email,MatKhau,QuyenHan) VALUES (?,?,?)";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, usr.getEmail());
        pstm.setString(2, usr.getMatKhau());
        pstm.setString(3, usr.getQuyenHan());
        
        pstm.executeUpdate();
    }

    public static UserAccount getTaiKhoanByEdit(Connection conn, String Email) throws SQLException {
        String sql = "select*from websitehtttvt.taikhoan where Email=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, Email);
        ResultSet rs = pstm.executeQuery();
        UserAccount account = new UserAccount();
        while (rs.next()) {
            account.setEmail(rs.getString("Email"));
            account.setMatKhau(rs.getString("MatKhau"));
            account.setQuyenHan(rs.getString("QuyenHan"));
        }
        return account;
    }
    public static void updateTaiKhoan(Connection conn,String Email,String MatKhau, String QuyenHan) throws SQLException {
        String sql = " UPDATE `websitehtttvt`.`taikhoan` SET `MatKhau` = ?, `QuyenHan` = ? WHERE (`Email` = ?) ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, MatKhau);
        pstm.setString(2, QuyenHan);
        pstm.setString(3, Email);
   
        pstm.executeUpdate();
    }
    public static void insertUserPerson(Connection conn, String Email,String SoDienThoai, String Ten, String NgayThangNamSinh,String HinhAnh) throws SQLException {
        String sql = "INSERT INTO `websitehtttvt`.`sinhvien` (`Email`,`SoDienThoai`, `Ten`, `NgayThangNamSinh`,`HinhAnh`) VALUES (?,?,?,?,?);";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, Email);
        pstm.setString(2, SoDienThoai);
        pstm.setString(3, Ten);
        pstm.setString(4, NgayThangNamSinh);
        pstm.setString(5, HinhAnh);

        pstm.executeUpdate();
    }
    public static List<UserPerson> selectUserPersonByAdmin(Connection conn, String Email) throws SQLException {
        String sql = "select k.Email,k.SoDienThoai,k.Ten,k.NgayThangNamSinh,k.HinhAnh from websitehtttvt.sinhvien k where k.Email=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, Email);
        ResultSet rs = pstm.executeQuery();
        List<UserPerson> list = new ArrayList<UserPerson>();
        while (rs.next()) {
            Email = rs.getString("Email");
            String SoDienThoai=rs.getString("SoDienThoai");
            String Ten = rs.getString("Ten");
            Date NgayThangNamSinh = rs.getDate("NgayThangNamSinh");
            String HinhAnh = rs.getString("HinhAnh");
            UserPerson userperson = new UserPerson();
            userperson.setEmail(Email);
            userperson.setSoDienThoai(SoDienThoai);
            userperson.setTen(Ten);
            userperson.setNgayThangNamSinh(NgayThangNamSinh);
            userperson.setEmail(Email);
            userperson.setHinhAnh(HinhAnh);
            list.add(userperson);
        }
        return list;
    }
    public static UserPerson getUserPersonByAdmin(Connection conn, String Email) throws SQLException {
        String sql = "select*from websitehtttvt.sinhvien k where k.Email=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, Email);
        ResultSet rs = pstm.executeQuery();
        UserPerson up = new UserPerson();
        while (rs.next()) {
            up.setEmail(rs.getString("Email"));
            up.setSoDienThoai(rs.getString("SoDienThoai"));
            up.setTen(rs.getString("Ten"));
            up.setNgayThangNamSinh(rs.getDate("NgayThangNamSinh"));
            up.setHinhAnh(rs.getString("HinhAnh"));
        }
        return up;
    }
    public static UserAccount CheckAccountExist(Connection conn, String Email ) throws SQLException {
        String sql = " select*from websitehtttvt.taikhoan t  where t.Email=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, Email);
        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            UserAccount user = new UserAccount();
            user.setEmail(rs.getString("Email"));
            user.setMatKhau(rs.getString("MatKhau"));
            user.setQuyenHan(rs.getString("QuyenHan"));
            return user;
        }
        return null;
    }
    public static void insertCommet(Connection conn, String Email,String MaBaiViet, String NoiDung) throws SQLException {
        String sql = "insert into websitehtttvt.binhluan(Email,MaBaiViet,NoiDung) VALUES (?,?,?);";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, Email);
        pstm.setString(2, MaBaiViet);
        pstm.setString(3, NoiDung);
        
        pstm.executeUpdate();
    }
    public static List<UserComment> selectComment(Connection conn,String MaBaiViet) throws SQLException {
        String sql = "SELECT * FROM websitehtttvt.binhluan where MaBaiViet=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1,MaBaiViet);
        ResultSet rs = pstm.executeQuery();
        List<UserComment> list = new ArrayList<UserComment>();
        while (rs.next()) {
            int MaBinhLuan=rs.getInt("MaBinhLuan");
            String Email=rs.getString("Email");
            MaBaiViet = rs.getString("MaBaiViet");           
            Timestamp NgayDang = rs.getTimestamp("NgayDang");
            String NoiDung = rs.getString("NoiDung");
            UserComment usercomment = new UserComment();
            usercomment.setMaBinhLuan(MaBinhLuan);
            usercomment.setEmail(Email);
            usercomment.setMaBaiViet(MaBaiViet);
            usercomment.setNgayDang(NgayDang);
            usercomment.setNoiDung(NoiDung);
            
            list.add(usercomment);
        }
        return list;
    }
    public static UserComment getCommentByMaBaiViet(Connection conn, String MaBaiViet) throws SQLException {
        String sql = "select*from websitehtttvt.binhluan where MaBaiViet=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, MaBaiViet);
        ResultSet rs = pstm.executeQuery();
        UserComment uc = new UserComment();
        while (rs.next()) {
            uc.setMaBinhLuan(rs.getInt("MaBinhLuan"));
            uc.setEmail(rs.getString("Email"));
            uc.setMaBaiViet(rs.getString("MaBaiViet"));
            uc.setNgayDang(rs.getTimestamp("NgayDang"));
            uc.setNoiDung(rs.getString("NoiDung"));           
        }
        return uc;
    }
    public static List<UserComment> selectCommentManager(Connection conn,String Email) throws SQLException {
        String sql = "SELECT * FROM websitehtttvt.binhluan where Email=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1,Email);
        ResultSet rs = pstm.executeQuery();
        List<UserComment> list = new ArrayList<UserComment>();
        while (rs.next()) {
            int MaBinhLuan=rs.getInt("MaBinhLuan");
            Email=rs.getString("Email");
            String MaBaiViet = rs.getString("MaBaiViet");           
            Timestamp NgayDang = rs.getTimestamp("NgayDang");
            String NoiDung = rs.getString("NoiDung");
            UserComment usercomment = new UserComment();
            usercomment.setMaBinhLuan(MaBinhLuan);
            usercomment.setEmail(Email);
            usercomment.setMaBaiViet(MaBaiViet);
            usercomment.setNgayDang(NgayDang);
            usercomment.setNoiDung(NoiDung);
            
            list.add(usercomment);
        }
        return list;
    }
    public static UserComment getCommentEdit(Connection conn, String MaBinhLuan) throws SQLException {
        String sql = "SELECT * FROM websitehtttvt.binhluan where MaBinhLuan=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, MaBinhLuan);
        ResultSet rs = pstm.executeQuery();
        UserComment uc = new UserComment();
        while (rs.next()) {
            uc.setMaBinhLuan(rs.getInt("MaBinhLuan"));
            uc.setEmail(rs.getString("Email"));
            uc.setMaBaiViet(rs.getString("MaBaiViet"));
            uc.setNgayDang(rs.getTimestamp("NgayDang"));
            uc.setNoiDung(rs.getString("NoiDung"));
        }
        return uc;
    }
    public static void updateComment(Connection conn,String MaBinhLuan,String NoiDung) throws SQLException {
        String sql = " UPDATE `websitehtttvt`.`binhluan` SET  `NoiDung` = ? WHERE (`MaBinhLuan` = ?) ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, NoiDung);
        pstm.setString(2, MaBinhLuan);
   
        pstm.executeUpdate();
    }
    public static void DeleteComment(Connection conn, String MaBinhLuan) throws SQLException {
        String sql = "delete from websitehtttvt.binhluan where MaBinhLuan = ? ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, MaBinhLuan);
        pstm.executeUpdate();
    }
}
