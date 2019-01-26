/**
 * @filename:${entityName}Controller ${createTime}
 * @project ${project}  ${version}
 * Copyright(c) 2018 ${author} Co. Ltd. 
 * All right reserved. 
 */
package ${controllerUrl};

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestBody;

import com.github.mybatis.entity.ResultUtil;
import com.github.mybatis.entity.Result;
import com.github.mybatis.entity.Query;
import com.github.mybatis.entity.PageUtils;
import ${entityUrl}.${entityName};
import ${serviceUrl}.${entityName}Service;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;

/**   
 * 
 * @Description:  ${entityComment}接口层
 * @Author:       ${author}   
 * @CreateDate:   ${createTime}
 * @Version:      ${version}
 *    
 */
@Api(description = "${entityComment}",value="${entityComment}" )
@RestController
@RequestMapping("/${objectName}")
public class ${entityName}Controller {

	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	public ${entityName}Service ${objectName}ServiceImpl;
	
	/**
	 * @explain 查询${entityComment}对象  <swagger GET请求>
	 * @param  	id 主键ID
	 * @return  ${objectName}
	 * @author  ${author}
	 * @time    ${createTime}
	 */
	@GetMapping("/get${entityName}ById/{id}")
	@ApiOperation(value = "获取${entityComment}信息", notes = "获取${entityComment}信息[${objectName}]，作者：${author}")
	@ApiImplicitParam(paramType="path", name = "id", value = "${entityComment}id", required = true, dataType = "${idType}")
	public Result<${entityName}> get${entityName}ById(@PathVariable("id")${idType} id){
    	Result<${entityName}> result = null;
		try {
			${entityName} ${objectName}=${objectName}ServiceImpl.selectByPrimaryKey(id);
			if (${objectName}!=null) {
				result = ResultUtil.success(${objectName});
				result.setMessage("成功");
			} else {
				logger.error("获取${entityComment}失败ID："+id);
				result = ResultUtil.error("你获取的${entityComment}不存在...");
				result.setMessage("你获取的${entityComment}不存在");
			}
		} catch (Exception e) {
			logger.error("获取${entityComment}执行异常："+e.getMessage());
			result = ResultUtil.error("执行异常，请稍后重试...");
			result.setMessage("执行异常，请稍后重试");
		}
		return result;
	}
	
	/**
	 * @explain 添加${entityComment}对象
	 * @param   ${objectName}	插入数据的对象
	 * @return  int
	 * @author  ${author}
	 * @time    ${createTime}
	 */
	@PostMapping("/insertSelective")
	@ApiOperation(value = "添加${entityComment}", notes = "添加${entityComment}[${objectName}],作者：${author}")
	public Result<${entityName}> insertSelective(@RequestBody ${entityName} ${objectName}){
    	Result<${entityName}> result = null;
		try {
			int rg=${objectName}ServiceImpl.insertSelective(${objectName});
			if (rg>0) {
				result = ResultUtil.success(${objectName});
				result.setMessage("成功");
			} else {
				logger.error("添加${entityComment}执行失败："+${objectName}.toString());
				result = ResultUtil.error("添加${entityComment}执行失败...");
				result.setMessage("添加${entityComment}执行失败");
			}
		} catch (Exception e) {
			logger.error("添加${entityComment}执行异常："+e.getMessage());
			result = ResultUtil.error("执行异常，请稍后重试...");
			result.setMessage("执行异常，请稍后重试");
		}
		return result;
	}
	
	/**
	 * @explain 删除${entityComment}对象
	 * @param   id 删除对象的ID
	 * @return  int
	 * @author  ${author}
	 * @time    ${createTime}
	 */
	@PostMapping("/deleteByPrimaryKey")
	@ApiOperation(value = "删除${entityComment}", notes = "删除${entityComment},作者：${author}")
	@ApiImplicitParam(paramType="query", name = "id", value = "${entityComment}id", required = true, dataType = "${idType}")
	public Result<${entityName}> deleteByPrimaryKey(${idType} id){
    	Result<${entityName}> result = null;
		try {
			int reg=${objectName}ServiceImpl.deleteByPrimaryKey(id);
			if (reg>0) {
				result = ResultUtil.success(id);
				result.setMessage("成功");
    		} else {
				logger.error("删除${entityComment}失败ID："+id);
    			result = ResultUtil.error("删除${entityComment}失败ID...");
				result.setMessage("删除${entityComment}失败ID");
			}
		} catch (Exception e) {
			logger.error("删除${entityComment}执行异常："+e.getMessage());
			result = ResultUtil.error("删除${entityComment}失败ID...");
			result.setMessage("执行异常，请稍后重试");
		}
		return result;
	}
	
	/**
	 * @explain 修改${entityComment}对象
	 * @param   ${objectName}	修改对象
	 * @return  ${objectName}
	 * @author  ${author}
	 * @time    ${createTime}
	 */
	@ApiOperation(value = "修改${entityComment}", notes = "修改${entityComment}[${objectName}],作者：${author}")
	@PostMapping("/updateByPrimaryKeySelective")
	public Result<${entityName}> updateByPrimaryKeySelective(@RequestBody ${entityName} ${objectName}){
        Result<${entityName}> result = null;
		try {
			int reg = ${objectName}ServiceImpl.updateByPrimaryKeySelective(${objectName});
			if (reg>0) {
        		result = ResultUtil.success(${objectName});
			} else {
				logger.error("修改${entityComment}失败ID："+${objectName}.toString());
        		result = ResultUtil.error("修改${entityComment}失败ID...");
    			result.setMessage("修改${entityComment}失败ID");
			}
		} catch (Exception e) {
			logger.error("修改${entityComment}执行异常："+e.getMessage());
       		result = ResultUtil.error("修改${entityComment}执行异常...");
		}
		return result;
	}
	
	/**
	 * @explain 获取匹配${entityComment}
	 * @param   ${objectName}
	 * @return  List<${entityName}>
	 * @author  ${author}
	 * @time    ${createTime}
	 */
	@ApiOperation(value = "条件查询${entityComment}", notes = "条件查询[${objectName}],作者：${author}")
	@PostMapping("/query${entityName}List")
	public Result<${entityName}> query${entityName}List(@RequestBody Map<String, Object> ${objectName}){
        Result<${entityName}> result = null;
        if(null == ${objectName}) {
			result = ResultUtil.error("传递的对象为空");
			result.setMessage("传递的对象为空");
   			return result;
        }

        Query query = new Query(${objectName});
		try {
			List<${entityName}> list = ${objectName}ServiceImpl.query${entityName}List(query);
			int total = ${objectName}ServiceImpl.query${entityName}ListTotal(query);
    		PageUtils pageUtil = new PageUtils(list, total, query.getPageSize(), query.getPageNum());
       		result = ResultUtil.success(pageUtil);
		} catch (Exception e) {
			logger.error("获取${entityComment}执行异常："+e.getMessage());
        	result = ResultUtil.error("获取${entityComment}执行异常...");
   			result.setMessage("获取${entityComment}执行异常");
		}
		return result;
	}
	
}