package handler.action;

import com.google.gson.Gson;
import controller.Action;
import handler.dao.CatDAO;
import handler.dto.CatDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RemoveCartAction implements Action {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        String id = request.getParameter("id");
        request.setAttribute(id , "id");

        return "RequestDispatcher:jsp/removeCart.jsp";
    }
}
