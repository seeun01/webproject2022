package handler.action;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import controller.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Enumeration;

public class ProcessAddCatAction implements Action {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
//        System.out.println("dd");
        String filename = "";
        String realFolder = "C:\\webproject2022\\web\\img";     //절대경로
        int maxSize = 5 * 1024 * 1024;                          //최대 업로드될 파일의 크기
        String encType = "utf-8";                               //인코딩 유형

        MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

        String catType = multi.getParameter("catType");
        String age = multi.getParameter("age");
        String gender = multi.getParameter("gender");
        String location = multi.getParameter("location");
        String etc = multi.getParameter("etc");

        Enumeration files = multi.getFileNames();
        String fname = (String)files.nextElement();
        String fileName = multi.getFilesystemName(fname);
        //String realFile = realFolder + "\\" + fileName;

        String text = fileName+"-/-/-"+catType+"-/-/-"+age+"-/-/-"+gender+"-/-/-"+location+"-/-/-"+etc;
        request.setAttribute("text" , text);
        return "RequestDispatcher:jsp/processAddCat.jsp";
    }
}
