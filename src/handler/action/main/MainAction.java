package handler.action.main;

import com.google.gson.Gson;
import controller.Action;
import handler.dao.CatDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainAction implements Action {
    /**
     * 단순히 main.jsp를 띄워줍니다.
     * */
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//        System.out.println("dd");
        Gson gson = new Gson();
        request.setAttribute("CatData", gson.toJson(CatDAO.getInstance().getAllCatData()));
        return "RequestDispatcher:jsp/main/main.jsp";
    }
}
