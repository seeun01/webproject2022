package handler.action;

import com.google.gson.Gson;
import controller.Action;
import handler.dao.CatDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CartListAction implements Action {
    /**
     * 단순히 main.jsp를 띄워줍니다.
     * */
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//        System.out.println("dd");

        return "RequestDispatcher:jsp/cartList.jsp";
    }
}
