package com.room;

import com.lyq.bean.CloseUtil;
import com.lyq.bean.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class RoomUpdate {
    public int update(String roomName,long startTime) {
        DBUtil dbUtil = new DBUtil();
        Connection conn = null;
        try {
            conn = dbUtil.getConnection();

            String sql = "update room set roomEven = null,roomStart = 0 , roomEnd = 0 where roomName = ? and roomStart = ?";
            PreparedStatement pst = (PreparedStatement) conn.prepareStatement(sql);
            pst.setString(1, roomName);
            pst.setLong(2, startTime);
            return pst.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            new CloseUtil().close(conn);
        }
        return 0;
    }
}

