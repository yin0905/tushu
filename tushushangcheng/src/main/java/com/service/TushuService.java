package com.service;

import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.TushuEntity;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

/**
 * 图书 服务类
 */
public interface TushuService extends IService<TushuEntity> {

    /**
    * @param params 查询参数
    * @return 带分页的查询出来的数据
    */
     PageUtils queryPage(Map<String, Object> params);
    /**
     * 根据图书类型ID删除图书信息
     * @param typeId 图书类型ID
     * @return 删除结果
     */
    boolean deleteTushusByTypeId(Integer typeId);
}