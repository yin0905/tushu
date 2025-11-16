package com.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.utils.StringUtil;
import org.springframework.stereotype.Service;
import java.lang.reflect.Field;
import java.util.*;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.transaction.annotation.Transactional;
import com.utils.PageUtils;
import com.utils.Query;
import org.springframework.web.context.ContextLoader;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import com.dao.TushuDao;
import com.entity.TushuEntity;
import com.service.TushuService;
import com.entity.view.TushuView;

/**
 * 图书 服务实现类
 */
@Service("tushuService")
@Transactional
public class TushuServiceImpl extends ServiceImpl<TushuDao, TushuEntity> implements TushuService {

    @Override
    public PageUtils queryPage(Map<String,Object> params) {
        if(params != null && (params.get("limit") == null || params.get("page") == null)){
            params.put("page","1");
            params.put("limit","10");
        }
        Page<TushuView> page =new Query<TushuView>(params).getPage();
        page.setRecords(baseMapper.selectListView(page,params));
        return new PageUtils(page);
    }
    @Override
    public boolean deleteTushusByTypeId(Integer typeId) {
        if (typeId == null) {
            return false;
        }
        try {
            TushuEntity tushuEntity = new TushuEntity();
            tushuEntity.setTushuDelete(2);
            tushuEntity.setShangxiaTypes(2);
            Wrapper<TushuEntity> queryWrapper = new EntityWrapper<TushuEntity>()
                    .eq("tushu_types", typeId);
            boolean updateCount = this.update(tushuEntity, queryWrapper);
            return updateCount;
        } catch (Exception e) {
            return false;
        }
    }


}
