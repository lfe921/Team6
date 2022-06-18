package com.yjq.programmer.controller;

import com.yjq.programmer.dto.AppointDTO;
import com.yjq.programmer.dto.LeftnumDTO;
import com.yjq.programmer.dto.ResponseDTO;
import com.yjq.programmer.service.IAppointService;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;

import static org.junit.Assert.assertEquals;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AppointControllerTest {

    @Resource
    private IAppointService appointService;

    @Before
    public void setUp() throws Exception {
    }

    @After
    public void tearDown() throws Exception {
    }

//    @ParameterizedTest
//    @CsvSource(delimiter = '|',
//    value = {
//            "4|true|true|true|true|true|true",
//    })
    @Test
    public void saveAppoint() {
        AppointDTO appointDTO = new AppointDTO();
        appointDTO.setAppointTime("2022-06-19 00:00:00");
        appointDTO.setDoctorId("cmWmPwtF");
        appointDTO.setUserId("dj81iy0L");
        ResponseDTO<Boolean> res = appointService.saveAppoint(appointDTO);
        assertEquals(true, res.getData());
        res = appointService.saveAppoint(appointDTO);
        assertEquals(true, res.getData());
        res = appointService.saveAppoint(appointDTO);
        assertEquals(true, res.getData());
        res = appointService.saveAppoint(appointDTO);
        assertEquals(true, res.getData());
        res = appointService.saveAppoint(appointDTO);
        assertEquals(true, res.getData());
        res = appointService.saveAppoint(appointDTO);
        assertEquals("预约挂号时间不能为空！", res.getMsg());
//        for(int i = 0; i < n; i++) {
//            ResponseDTO<Boolean> res = appointService.saveAppoint(appointDTO);
//            assertEquals(b[i], res.getData());
//        }
    }

    @Test
    public void saveLeftnum() {
        LeftnumDTO leftnumDTO = new LeftnumDTO();
        leftnumDTO.setAppointTime("2022-06-20 00:00:00");
        leftnumDTO.setDoctorId("cmWmPwtF");
        leftnumDTO.setInfo(5);
        ResponseDTO<Boolean> res = appointService.saveLeftnum(leftnumDTO);
        System.out.println(res.getMsg());
        assertEquals(true, res.getData());
        leftnumDTO.setInfo(0);
        res = appointService.saveLeftnum(leftnumDTO);
        assertEquals("增加挂号名额不能小于一！", res.getMsg());
        leftnumDTO.setInfo(-1);
        res = appointService.saveLeftnum(leftnumDTO);
        assertEquals("增加挂号名额不能小于一！", res.getMsg());
    }
}