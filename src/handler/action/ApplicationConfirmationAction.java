package handler.action;

import controller.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ApplicationConfirmationAction implements Action {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//        System.out.println("dd");
        String catId = request.getParameter("catId");
        request.setAttribute("catId", catId);

        return "RequestDispatcher:jsp/applicationConfirmation.jsp";
    }
}