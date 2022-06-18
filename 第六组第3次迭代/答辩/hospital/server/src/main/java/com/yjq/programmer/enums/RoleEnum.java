package com.yjq.programmer.enums;

public enum RoleEnum {

    USER("1","患者"),

    DOCTOR("2","医生"),

    ADMIN("3","管理员"),

    ;

    String code;

    String desc;

    RoleEnum(String code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
}
