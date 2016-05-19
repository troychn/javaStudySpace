package org.seckill.dao;

import org.seckill.entity.BaseEntity;

import java.io.Serializable;

/**
 * Created by troylc on 2016/5/19.
 */
public interface BaseDao <T extends BaseEntity,PK extends Serializable> {

    /**
     * 基类方法插入对应实体（泛型）方法
     * @param entity
     * @return
     */
    int insert(T entity);

    /**
     * 基类方法更新对应实体（泛型）方法
     * @param entity
     * @return
     */
    int update(T entity);

    /**
     * 基类方法根据主键删除方法
     * @param primaryKey
     * @return
     */
    int delete(PK primaryKey);

    /**
     *  基类方法根据主键获取实体对象
     * @param primarykey
     * @return
     */
    T get(PK primarykey);
}
