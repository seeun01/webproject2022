package handler.action;

import com.google.gson.Gson;
import controller.Action;
import controller.LoginManager;
import handler.dao.UserDAO;
import handler.dto.UserDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginAction implements Action {
    @Override
/*    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Gson gson = new Gson();
        request.setAttribute("UserData", gson.toJson(UserDAO.getInstance().login()));
        return "RequestDispatcher:jsp/login.jsp";
    }*/
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        LoginManager manager = LoginManager.getInstance();
        String id = request.getParameter("id");
        String password = request.getParameter("password");

        UserDAO dao = UserDAO.getInstance();

        UserDTO it = dao.getUser(id);   //id에 따른 유저 정보 받아오기(아이디가 일치하지 않으면 null값)
        HttpSession session = request.getSession();
        Gson gson = new Gson();

        if(it!=null) { //조회한 id가 존재한다면
            if (it.getPassword().equals(password)) { //조회한 id의 비밀번호가 입력한 비밀번호와 일치한다면
                if (manager.isUsing(id)) { //접속중이라면
                    manager.removeSession(id); //접속중인 세션 제거
                }
            System.out.println("로그인 성공");
                manager.setSession(request.getSession(), id); //세션 설정하기
//                LogDAO.getInstance().insertLog(it.id,it.name,it.type, new Date(),"로그인");
                session.setAttribute("user", gson.toJson(it));
//                session.setAttribute("miss", 0);
                response.sendRedirect("/"); //요청이 끝나면 메인페이지로 이동시켜줌 (깔끔한 URL 정리를 위해 이걸로 대체함)
                return "";
            }
        }
        return "RequestDispatcher:jsp/login.jsp";
    }
}