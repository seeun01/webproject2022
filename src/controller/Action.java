package controller;

import javax.servlet.http.*;

public interface Action {
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
