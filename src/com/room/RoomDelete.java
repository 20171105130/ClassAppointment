package com.room;

import com.lyq.bean.CloseUtil;
import com.lyq.bean.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class RoomDelete {
    public int delete(String roomName) {
    	DBUtil dbUtil = new DBUtil();
        Connection conn = null;
        try {
            conn = dbUtil.getConnection();
            String sql = "delete from room where roomName=?";
            PreparedStatement pst = (PreparedStatement) conn.prepareStatement(sql);
            pst.setString(1, roomName);
            return pst.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            new CloseUtil().close(conn);
        }
        return 0;
    }

    public int deleteNull(String roomName) {
    	DBUtil dbUtil = new DBUtil();
        Connection conn = null;
        try {
            conn = dbUtil.getConnection();
            String sql = "delete from room where roomStart=0 and roomName=? ";
            PreparedStatement pst = (PreparedStatement) conn.prepareStatement(sql);
            pst.setString(1, roomName);
            return pst.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            new CloseUtil().close(conn);
        }
        return 0;
    }
}
