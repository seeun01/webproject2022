package handler.action;

import com.google.gson.Gson;
import controller.Action;
import handler.dao.CatDAO;
import handler.dto.CatDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CatDetailAction implements Action {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        String id = request.getParameter("id");

        CatDAO dao = CatDAO.getInstance();
        CatDTO it = dao.getCat(id);

        Gson gson = new Gson();
        request.setAttribute("CatDetailData", gson.toJson(it));

        return "RequestDispatcher:jsp/catDetail.jsp";
    }
}
