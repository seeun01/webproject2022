package handler.action;

import controller.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteCartAction implements Action {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        String cartId = request.getParameter("cartId");
        request.setAttribute(cartId , "cartId");

        return "RequestDispatcher:jsp/deleteCart.jsp";
    }
}