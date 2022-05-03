package com.yjq.programmer.service;

import com.yjq.programmer.dto.DoctorDTO;
import com.yjq.programmer.dto.PageDTO;
import com.yjq.programmer.dto.ResponseDTO;

public interface IDoctorService {

    // 分页获取医生数据
    ResponseDTO<PageDTO<DoctorDTO>> getDoctorList(PageDTO<DoctorDTO> pageDTO, String token);

    // 保存医生信息操作
    ResponseDTO<Boolean> saveDoctor(DoctorDTO doctorDTO);

    // 删除医生操作
    ResponseDTO<Boolean> deleteDoctor(DoctorDTO doctorDTO);
}
