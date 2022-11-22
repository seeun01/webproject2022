package handler.dao;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import sql.Config;

import java.sql.Connection;
import java.sql.SQLException;

public class CatDAO {
    public static CatDAO it;

    public static CatDAO getInstance(){
        if(it==null)
            it = new CatDAO();
        return it;
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
}
