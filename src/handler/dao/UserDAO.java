package handler.dao;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import handler.dto.UserDTO;
import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;
import sql.Config;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class UserDAO {
    public static UserDAO it;

    public static UserDAO getInstance() { //인스턴스 생성
        if (it == null)
            it = new UserDAO();
        return it;
    }

    public ArrayList<UserDTO> getAllUserData() { //모든 User 데이터를 받아오기
        List<Map<String, Object>> listOfMaps = null;
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            listOfMaps = queryRunner.query(conn, "SELECT * FROM `user`", new MapListHandler());
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        Gson gson = new Gson();
        ArrayList<UserDTO> selectedList = gson.fromJson(gson.toJson(listOfMaps), new TypeToken<List<UserDTO>>() {
        }.getType()); //위에서 불러온 DB를 LoginDTO 타입으로 만들어서 return 해줌
        return selectedList;
    }

    // 로그인 기능
    public int login(String id, String password) {
        Connection conn = Config.getInstance().sqlLogin();
        String SQL = "SELECT password FROM USER WHERE id = ?";
        try {
            PreparedStatement pstmt;
            ResultSet rs;   //db 결과를 담는 객체
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, id); //sql Injection 공격 방어 수단 : 1번째 물음표에 userID 입력
            rs = pstmt.executeQuery(); // 쿼리 실행
            if (rs.next()) {
                if (rs.getString(1).equals(password)) // rs.getString(1) : select된 첫번째 컬럼
                    return 1; //로그인 성공
                else
                    return 0; // 비밀번호 틀림
            }
            return -1; // 아이디 없음
        }catch(Exception e) {
            e.printStackTrace();

        }
        return -2; //DB 오류
    }

    public UserDTO getUser(String id) {
        List<Map<String, Object>> listOfMaps = null;
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            listOfMaps = queryRunner.query(conn,"SELECT * FROM user WHERE id = ?;", new MapListHandler(), id);

//            System.out.println(listOfMaps);
        } catch(SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        Gson gson = new Gson();
        ArrayList<UserDTO> selected = gson.fromJson(gson.toJson(listOfMaps), new TypeToken<List<UserDTO>>() {}.getType());
        if(selected.size()>0) {
            return selected.get(0);
        }
        else
            return null;
    }
}

