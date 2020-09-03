package com.room;

import com.room.Room;
import com.lyq.bean.Applicant;
import com.lyq.bean.CloseUtil;
import com.lyq.bean.DBUtil;
import com.lyq.bean.StringUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RoomSelect {
    public List<Room> selectRoomName(String roomName) {
        DBUtil dbUtil = new DBUtil();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Applicant user = null;
        List<Room> list = new ArrayList<>();
        try {
            conn = dbUtil.getConnection();
            //创建Sql命令
            String sql = "select * from room where roomName = ?";
            //创建Sql命令对象
            ps = conn.prepareStatement(sql);
            //给占位符赋值
            ps.setString(1,roomName);
            rs = ps.executeQuery();
            while (rs.next()) {
                Room room = new Room();
                room.setRoomID(rs.getInt("roomID"));
                room.setRoomName(rs.getString("RoomName"));
                room.setRoomEven(rs.getString("roomEven"));
                room.setRoomStart(rs.getLong("roomStart"));
                room.setRoomEnd(rs.getLong("roomEnd"));
                list.add(room);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            new CloseUtil().close(conn);
        }
        return list;
    }


    public List<Room> selectAll() {
        DBUtil dbUtil = new DBUtil();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Applicant user = null;
        List<Room> list = new ArrayList<>();
        try {
            conn = dbUtil.getConnection();
            //创建Sql命令
            String sql = "select * from room";
            //创建Sql命令对象
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Room room = new Room();
                room.setRoomID(rs.getInt("roomID"));
                room.setRoomName(rs.getString("RoomName"));
                room.setRoomEven(rs.getString("roomEven"));
                room.setRoomStart(rs.getLong("roomStart"));
                room.setRoomEnd(rs.getLong("roomEnd"));
                list.add(room);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            new CloseUtil().close(conn);
        }
        return list;
    }

    public List<Room> selectNull() {
        DBUtil dbUtil = new DBUtil();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Applicant user = null;
        List<Room> list = new ArrayList<>();
        try {
            conn = dbUtil.getConnection();
            //创建Sql命令
            String sql = "select * from room where roomStart = 0 and roomEnd = 0;";
            //创建Sql命令对象
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Room room = new Room();
                room.setRoomID(rs.getInt("roomID"));
                room.setRoomName(rs.getString("RoomName"));
                room.setRoomEven(rs.getString("roomEven"));
                room.setRoomStart(rs.getLong("roomStart"));
                room.setRoomEnd(rs.getLong("roomEnd"));
                list.add(room);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            new CloseUtil().close(conn);
        }
        return list;
    }

    public List<Room> selectNotNull() {
        DBUtil dbUtil = new DBUtil();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Applicant user = null;
        List<Room> list = new ArrayList<>();
        try {
            conn = dbUtil.getConnection();
            //创建Sql命令
            String sql = "select * from room where roomStart != 0 and roomEnd != 0;";
            //创建Sql命令对象
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Room room = new Room();
                room.setRoomID(rs.getInt("roomID"));
                room.setRoomName(rs.getString("RoomName"));
                room.setRoomEven(rs.getString("roomEven"));
                room.setRoomStart(rs.getLong("roomStart"));
                room.setRoomEnd(rs.getLong("roomEnd"));
                list.add(room);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            new CloseUtil().close(conn);
        }
        return list;
    }
}

