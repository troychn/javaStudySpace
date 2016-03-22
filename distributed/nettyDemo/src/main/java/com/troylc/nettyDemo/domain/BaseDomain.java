package com.troylc.nettyDemo.domain;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import java.io.Serializable;

/**
 * Created by noah on 10/27/14.
 */
@MappedSuperclass
public abstract class BaseDomain implements Serializable {


    protected String uuid;

    @Id
    @Column(name = "uuid", nullable = false, insertable = true, updatable = true, length = 32)
    @GeneratedValue(generator = "paymentableGenerator")
    @GenericGenerator(name = "paymentableGenerator", strategy = "uuid")
    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }
}
