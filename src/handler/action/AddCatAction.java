package handler.action;

import controller.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddCatAction implements Action {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        //System.out.println("dd");
        return "RequestDispatcher:jsp/addCat.jsp";
    }
}
