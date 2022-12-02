package handler.action;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import controller.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Enumeration;

public class ProcessAddApplicationAction implements Action {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//        System.out.println("dd");

        MultipartRequest multi = new MultipartRequest(request,"C:\\webproject2022\\web\\img",5 * 1024 * 1024,"utf-8", new DefaultFileRenamePolicy());

        String name = multi.getParameter("name");
        String age = multi.getParameter("age");
        String phone = multi.getParameter("phone");
        String location = multi.getParameter("location");
        String catId = multi.getParameter("id");

        System.out.println("" + name + age + phone + location + catId);

        request.setAttribute("name" , name);
        request.setAttribute("age" , age);
        request.setAttribute("phone" , phone);
        request.setAttribute("location" , location);
        request.setAttribute("catId" , catId);



       /* request.setAttribute("text" , text);*/
        return "RequestDispatcher:jsp/processAddApplication.jsp";
    }
}
