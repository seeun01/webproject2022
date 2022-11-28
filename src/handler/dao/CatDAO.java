package handler.dao;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import handler.dto.CatDTO;
import handler.dto.UserDTO;
import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;
import sql.Config;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class CatDAO {
    public static CatDAO it;

    public static CatDAO getInstance(){
        if(it==null)
            it = new CatDAO();
        return it;
    }
    public ArrayList<CatDTO> getAllCatData() { //모든 Example 데이터를 받아오기
        List<Map<String, Object>> listOfMaps = null;
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            listOfMaps = queryRunner.query(conn, "SELECT * FROM `cat`", new MapListHandler());
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        Gson gson = new Gson();
        ArrayList<CatDTO> selectedList = gson.fromJson(gson.toJson(listOfMaps), new TypeToken<List<CatDTO>>() {
        }.getType()); //위에서 불러온 DB를 ExampleDTO 타입으로 만들어서 return 해줌
        return selectedList;
    }

    public String addCat(String data) {
        System.out.println(data + " here is CatDAO and this is text");
        String [] arr = data.split("-/-/-");    //받아온 한 줄짜리 데이터를 배열로 쪼개기
        String fileName = arr[0];
        String catType = arr[1];
        String age = arr[2];
        String gender = arr[3];
        String location = arr[4];
        String etc = arr[5];

        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            queryRunner.update(conn,
                    "INSERT INTO `cat`(fileName, catType, age, gender, location, etc) " +
                            "VALUES (?,?,?,?,?,?)", fileName,catType,age,gender,location,etc);
        }
        catch (SQLException se){
            se.printStackTrace();
        }
        finally {
            DbUtils.closeQuietly(conn);
        }
        return "등록되었습니다";
    }

    public CatDTO getCat(String id) {
        List<Map<String, Object>> listOfMaps = null;
        Connection conn = Config.getInstance().sqlLogin();
        try {
            QueryRunner queryRunner = new QueryRunner();
            listOfMaps = queryRunner.query(conn,"SELECT * FROM cat WHERE oid = ?;", new MapListHandler(), id);

//            System.out.println(listOfMaps);
        } catch(SQLException se) {
            se.printStackTrace();
        } finally {
            DbUtils.closeQuietly(conn);
        }
        Gson gson = new Gson();
        ArrayList<CatDTO> selected = gson.fromJson(gson.toJson(listOfMaps), new TypeToken<List<CatDTO>>() {}.getType());
        if(selected.size()>0) {
            return selected.get(0);
        }
        else
            return null;
    }
}
