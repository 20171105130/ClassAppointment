package com.User;

import com.room.RoomDelete;
import com.room.RoomInsert;
import com.room.RoomSelect;
import com.room.RoomUpdate;
import com.room.Room;
import com.lyq.bean.Applicant;
import com.lyq.bean.IsInteger;
import com.lyq.bean.StringUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

@WebServlet("/userRemoveApply")
public class UserRemoveApply extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset = utf-8");
        req.setCharacterEncoding("utf-8");

        String roomName = req.getParameter("roomName");
        if(StringUtil.isNotEmpty(roomName) && !new RoomSelect().selectRoomName(roomName).isEmpty()) {
            String year = req.getParameter("year");
            String month = req.getParameter("month");
            String day = req.getParameter("day");
            String startHour = req.getParameter("startHour");
            String startMinute = req.getParameter("startMinute");
            if(IsInteger.isInteger(year) && IsInteger.isInteger(month) && IsInteger.isInteger(day) &&
                    IsInteger.isInteger(startHour) && IsInteger.isInteger(startMinute)) {
                String startTime = year+"-"+month+"-"+day+"-"+startHour+"-"+startMinute;
                Calendar startCalendar = Calendar.getInstance();
                try {
                    startCalendar.setTime(new SimpleDateFormat("yyyy-MM-dd-HH-mm").parse(startTime));
                    if(new RoomUpdate().update(roomName,startCalendar.getTimeInMillis()) >0) {
                        resp.sendRedirect(""+req.getContextPath()+"/successPage.jsp");
                    } else {
                        resp.sendRedirect(""+req.getContextPath()+"/errorPage.jsp");
                    }
                } catch (ParseException e) {
                    e.printStackTrace();
                }
            } else {
                resp.sendRedirect(""+req.getContextPath()+"/errorPage.jsp");
            }
        } else {
            resp.sendRedirect(""+req.getContextPath()+"/errorPage.jsp");
        }
    }
}
