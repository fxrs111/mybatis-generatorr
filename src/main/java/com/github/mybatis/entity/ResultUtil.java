package com.github.mybatis.entity;

import lombok.Data;

/**
 * @Author jtl
 * @Email 1321008859@qq.com
 * @Date 2018/11/22 0022 18:51
 * 返回结果工具类
 */
@Data
public class ResultUtil {
    private static  final Integer SUCCESSCODE = 200;
    private static  final Integer ERRORCODE = 500;
    private static  final String SUCCESSMSG = "success";
    private static  final String ERRORMSG = "error";
    private static  final String DEFAULTDATA = "";

    public static Result success(Integer code,String msg,Object data) {
        return new Result(code, msg, data);
    }

    public static Result success(Integer code,String msg) {
        return success(code, msg, DEFAULTDATA);
    }

    public static Result success(Object data) {
        return success(SUCCESSCODE, SUCCESSMSG, data);
    }
    public static Result success(String msg) {
        return success(SUCCESSCODE, msg, DEFAULTDATA);
    }
    public static Result success(String msg,Object data) {
        return success(SUCCESSCODE, msg, data);
    }
    public static Result success() {
        return success(SUCCESSCODE,SUCCESSMSG,DEFAULTDATA);
    }

    public static Result error(Integer code,String msg,Object data) {
        return new Result(code, msg,data);
    }

    public static Result error(Integer code, String msg) {
        return new Result(code, msg,DEFAULTDATA);
    }

    public static Result error(Object data) {
        return error(ERRORCODE, ERRORMSG,data);
    }

    public static Result error(String msg,Object data) {
        return error(ERRORCODE, msg,data);
    }

    public static Result error(String msg) {
        return error(ERRORCODE, msg, "error");
    }

    public static Result error() {
        return error(ERRORCODE, ERRORMSG,DEFAULTDATA);
    }

}
