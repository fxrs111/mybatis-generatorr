package com.github.mybatis.entity;

import org.springframework.util.StringUtils;

/**
 * @Description:字符串辅助工具类
 * @Author: ChenXiaobin
 * @Email: 564255897@qq.com
 * @Created Time: 2018-10-22 19:35
 * @Modified By:
 */
public class StrUtils extends StringUtils {
    /**
     * 判断字符串类型的object对象是否为空
     * @param obj
     * @return
     */
    public static boolean isEmpty(Object obj){
        if(obj==null){
            return true;
        }else{
            String s=obj.toString();
            if("".equals(s.trim()) || s.length() == 0){
                return true;
            }
        }
        return false;
    }

    /**将null转成空串
     * @param str
     * @return
     */
    public static String nullToEmptyStr(String str){
        return  str==null? "":str;
    }
}
