package controller;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;
import java.util.Enumeration;
import java.util.Hashtable;

public class LoginManager implements HttpSessionBindingListener {
    private static LoginManager loginManager = null;
    //로그인한 접속자를 담기위한 해시테이블
    private static Hashtable loginUsers = new Hashtable();
    public static synchronized LoginManager getInstance(){
        if(loginManager == null){
            loginManager = new LoginManager();
        }
        return loginManager;
    }
    //이 메소드는 세션이 연결되을때 호출된다.(session.setAttribute("login", this))
    //Hashtable에 세션과 접속자 아이디를 저장한다.
    public void valueBound(HttpSessionBindingEvent event) {
        loginUsers.put(event.getSession(), event.getName());
    }
    // 이 메소드는 세션이 끊겼을때 호출된다.(invalidate)
    // Hashtable에 저장된 로그인한 정보를 제거해 준다.
    public void valueUnbound(HttpSessionBindingEvent event) {
        //session값을 찾아서 없애준다.
        loginUsers.remove(event.getSession());
    }
    //입력받은 아이디를 해시테이블에서 삭제.
    //@param userID 사용자 아이디
    //@return void
    public void removeSession(String userId){
        Enumeration e = loginUsers.keys();
        HttpSession session = null;
        while(e.hasMoreElements()){
            session = (HttpSession)e.nextElement();
            if(loginUsers.get(session).equals(userId)){
                //세션이 invalidate될때 HttpSessionBindingListener를
                //구현하는 클레스의 valueUnbound()함수가 호출된다.
                session.invalidate();
            }
        }
    }
    /**
     * 해당 아이디의 동시 사용을 막기위해서
     * 이미 사용중인 아이디인지를 확인한다.
     * @param userID 사용자 아이디
     * @return boolean 이미 사용 중인 경우 true, 사용중이 아니면 false
     */
    public boolean isUsing(String userID){
        return loginUsers.containsValue(userID);
    }

    /**
     * 로그인을 완료한 사용자의 아이디를 세션에 저장하는 메소드
     * @param session 세션 객체
     * @param userID 사용자 아이디
     */
    public void setSession(HttpSession session, String userId){
        //이순간에 Session Binding이벤트가 일어나는 시점
        //name값으로 userId, value값으로 자기자신(HttpSessionBindingListener를 구현하는 Object)
        session.setAttribute(userId, this);//login에 자기자신을 집어넣는다.
    }
    /**
     * 입력받은 세션Object로 아이디를 리턴한다.
     * @param session : 접속한 사용자의 session Object
     * @return String : 접속자 아이디
     */
    public String getUserID(HttpSession session){
        return (String)loginUsers.get(session);
    }
}
