package com.User;

import com.room.RoomSelect;
import com.room.Room;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/userSelectNull")
public class UserSelectNull extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset = utf-8");
        req.setCharacterEncoding("utf-8");

        List<Room> list = new RoomSelect().selectNull();
        HttpSession session=req.getSession();
        session.setAttribute("list", list);
        resp.sendRedirect(""+req.getContextPath()+"/userPage.jsp");
    }
}
