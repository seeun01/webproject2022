package handler.action;

import com.google.gson.Gson;
import controller.Action;
import handler.dao.CatDAO;
import handler.dto.CatDTO;
import org.apache.taglibs.standard.tag.common.core.CatchTag;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;

public class AddCartAction  implements Action {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String id = request.getParameter("id");
        request.setAttribute(id , "id");

        return "RequestDispatcher:jsp/addCart.jsp";
    }
}