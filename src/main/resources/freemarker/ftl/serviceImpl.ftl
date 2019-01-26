/**
 * @filename:${entityName}ServiceImpl ${createTime}
 * @project ${project}  ${version}
 * Copyright(c) 2018 ${author} Co. Ltd. 
 * All right reserved. 
 */
package ${serviceImplUrl};

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ${entityUrl}.${entityName};
import ${daoUrl}.${entityName}Dao;
import ${serviceUrl}.${entityName}Service;
import com.github.mybatis.entity.Query;

/**   
 *  
 * @Description:  ${entityComment}——SERVICEIMPL
 * @Author:       ${author}   
 * @CreateDate:   ${createTime}
 * @Version:      ${version}
 *    
 */
@Service
public class ${entityName}ServiceImpl implements ${entityName}Service {
	
	@Autowired
	public ${entityName}Dao ${objectName}Dao;
	
	//查询对象
	@Override
	public ${entityName} selectByPrimaryKey(${idType} id) {
		return ${objectName}Dao.selectByPrimaryKey(id);
	}
	
	//删除对象
	@Override
	public int deleteByPrimaryKey(${idType} id) {
		return ${objectName}Dao.deleteByPrimaryKey(id);
	}
	
	//添加对象
	@Override
	public int insertSelective(${entityName} ${objectName}) {
		return ${objectName}Dao.insertSelective(${objectName});
	}
	
	//修改对象
	@Override
	public int updateByPrimaryKeySelective(${entityName} ${objectName}) {
		return ${objectName}Dao.updateByPrimaryKeySelective(${objectName});
	}
	
	//查询集合
	@Override
	public List<${entityName}> query${entityName}List(Query query) {
		return ${objectName}Dao.query${entityName}List(query);
	}

	//查询集合数量
	@Override
	public int query${entityName}ListTotal(Query query) {
		return ${objectName}Dao.query${entityName}ListTotal(query);
	}
	
}