package handler.action;

import controller.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ApplicationAction implements Action {
    /**
     * 단순히 main.jsp를 띄워줍니다.
     * */
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//        System.out.println("dd");

        String catId = request.getParameter("id");
        request.setAttribute("catId", catId);

        return "RequestDispatcher:jsp/application.jsp";
    }
}