
//package com.yjq.programmer.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.bind.annotation.RestController;
//
//import java.util.Iterator;
//import java.util.List;
//import java.util.Map;
//
//@RestController
//public class JDBCController {
//    @Autowired
//    static
//    JdbcTemplate jdbcTemplate;
//
//    @ResponseBody
//    public static String wholeList(String Id, String Tim){
//        String sql="select * from hospital_manager.left where id=Id & tim=Tim";
//        List<Map<String,Object>> list_maps=jdbcTemplate.queryForList(sql);
//        Iterator it = list_maps.iterator();
//        Map cur = (Map) it.next();
//        return (String) cur.get("cnt");
//    }
//}