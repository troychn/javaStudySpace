package com.troylc.nettyDemo.domain;

import com.troylc.nettyDemo.utils.IConstants;
import com.troylc.nettyDemo.utils.ListUtils;

import javax.persistence.*;
import java.io.*;
import java.util.Date;
import java.util.List;

/**
 * Created by lc on 2015/9/6.
 */
@Entity
@Table(name = "dmp_device_info")
public class DmpDeviceInfoEntity extends BaseDomain implements Cloneable {
    /**
     * 产品序列号
     */
    private String serialnumber;
    /**
     * 设备版本号
     */
    private String deviceversion;
    /**
     * 设备型号
     */
    private String product;
    /**
     * eth0的mac地址
     */
    private String eth0Mac;
    /**
     * 设备可升级版本
     */
    private String upgradeversion;
    /**
     * HA状态
     */
    private String hastatus;
    /**
     * 设备类型
     */
    private String devicetype;
    /**
     * 设备组id
     */
    private String groupid;
    /**
     * 物理位置或区域
     */
    private String physicallocation;
    /**
     * 上报时间或频率
     */
    private String reporttime;
    /**
     * 设备联系人邮箱
     */
    private String devmail;
    /**
     * 设备联系人手机号
     */
    private String devphone;
    /**
     * 设备联系人名称
     */
    private String devname;
    /**
     * 服务有效期
     */
    private String stermofvalidity;
    /**
     * 第一次上报时间(用来查询最新接入设备)
     */
    private Date createtime;

    /**
     * 设备性能信息对象
     */
    private DmpDevicePerformanceEntity devicePerformance;

    /**
     * 任务执行是否成功0为成功，1为失败
     */
    private transient String taskisok;

    private transient String oldDeviceVersion;

    /**
     * 上报频率
     */
    private Integer reportfrequency;
    /**
     * 系统类型：0代表tos,1代表新tos
     */
    private String systemtype;

    /**
     * NGTOS组件信息老版本
     */
    private transient List<DmpComponentVersion> componentOldVersions;
    /**
     * NGTOS组件信息
     */

    private List<DmpComponentVersion> componentVersions ;

    /*@OneToMany描述一个一对多的关联 ,该属性应该为集体类型,在数据库中并没有实际字段.
     fetch:表示抓取策略,默认为FetchType.LAZY,因为关联的多个对象通常不必从数据库预先读取到内存
    cascade:表示级联操作策略,表示默认的级联操作策略,可以指定为ALL,PERSIST,MERGE,REFRESH和REMOVE中的若干组合,默认为无级联操作
    ,对于OneToMany类型的关联非常重要,通常该实体更新或删除时,其关联的实体也应当被更新或删除
    mappedBy:用在@ManyToOne和@ManyToMany的关联中，用于指定维护两个关联实体类的属性
    delete-orphan:orphanRemoval = true只应用在OneToMany中，能级联删除Many集合中的子元素
    */
    @OneToMany(cascade = {CascadeType.REMOVE,CascadeType.PERSIST,CascadeType.MERGE},
            orphanRemoval= true,fetch = FetchType.EAGER)
    //@BatchSize(size = 10)
    @JoinColumn(name = "deviceuuid" ,referencedColumnName = "uuid")
    //@org.hibernate.annotations.Fetch(FetchMode.SUBSELECT)
    //@JsonManagedReference
    public List<DmpComponentVersion> getComponentVersions() {
        return componentVersions;
    }

    //@JsonDeserialize(using = ListComponentVersionDeserialize.class)
    public void setComponentVersions(List<DmpComponentVersion> componentVersions) {
        this.componentVersions = componentVersions;
    }

    @Transient
    public List<DmpComponentVersion> getComponentOldVersions() {
        return componentOldVersions;
    }

    public void setComponentOldVersions(List<DmpComponentVersion> componentOldVersions) {
        this.componentOldVersions = componentOldVersions;
    }

    public DmpDeviceInfoEntity() {
    }

    public DmpDeviceInfoEntity(DmpDevicePerformanceEntity devicePerformance) {
        this.devicePerformance = devicePerformance;
    }

    
    @Column(name = "serialnumber", nullable = true, insertable = true, updatable = true, length = 255)
    public String getSerialnumber() {
        return serialnumber;
    }

    public void setSerialnumber(String serialnumber) {
        this.serialnumber = serialnumber;
    }

    
    @Column(name = "deviceversion", nullable = true, insertable = true, updatable = true, length = 255)
    public String getDeviceversion() {
        return deviceversion;
    }

    public void setDeviceversion(String deviceversion) {
        this.deviceversion = deviceversion;
    }

    
    @Column(name = "eth0mac", nullable = true, insertable = true, updatable = true, length = 255)
    public String getEth0Mac() {
        return eth0Mac;
    }

    public void setEth0Mac(String eth0Mac) {
        this.eth0Mac = eth0Mac;
    }

    
    @Column(name = "upgradeversion", nullable = true, insertable = true, updatable = true, length = 255)
    public String getUpgradeversion() {
        return upgradeversion;
    }

    public void setUpgradeversion(String upgradeversion) {
        this.upgradeversion = upgradeversion;
    }

    
    @Column(name = "hastatus", nullable = true, insertable = true, updatable = true, length = 255)
    public String getHastatus() {
        return hastatus;
    }

    public void setHastatus(String hastatus) {
        this.hastatus = hastatus;
    }

    
    @Column(name = "devicetype", nullable = true, insertable = true, updatable = true, length = 255)
    public String getDevicetype() {
        return devicetype;
    }

    public void setDevicetype(String devicetype) {
        this.devicetype = devicetype;
    }

    
    @Column(name = "groupid", nullable = true, insertable = true, updatable = true, length = 255)
    public String getGroupid() {
        return groupid;
    }

    public void setGroupid(String groupid) {
        this.groupid = groupid;
    }

    
    @Column(name = "physicallocation", nullable = true, insertable = true, updatable = true, length = 255)
    public String getPhysicallocation() {
        return physicallocation;
    }

    public void setPhysicallocation(String physicallocation) {
        this.physicallocation = physicallocation;
    }

    
    @Column(name = "reporttime", nullable = true, insertable = true, updatable = true, length = 255)
    public String getReporttime() {
        return reporttime;
    }

    public void setReporttime(String reporttime) {
        this.reporttime = reporttime;
    }

    
    @Column(name = "devmail", nullable = true, insertable = true, updatable = true, length = 255)
    public String getDevmail() {
        return devmail;
    }

    public void setDevmail(String devmail) {
        this.devmail = devmail;
    }

    
    @Column(name = "devphone", nullable = true, insertable = true, updatable = true, length = 255)
    public String getDevphone() {
        return devphone;
    }

    public void setDevphone(String devphone) {
        this.devphone = devphone;
    }

    
    @Column(name = "devname", nullable = true, insertable = true, updatable = true, length = 255)
    public String getDevname() {
        return devname;
    }

    public void setDevname(String devname) {
        this.devname = devname;
    }

    
    @Column(name = "stermofvalidity", nullable = true, insertable = true, updatable = true, length = 255)
    public String getStermofvalidity() {
        return stermofvalidity;
    }

    public void setStermofvalidity(String stermofvalidity) {
        this.stermofvalidity = stermofvalidity;
    }

    
    @Column(name = "createtime", nullable = true, insertable = true, updatable = true)
    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    
    @Column(name = "product", nullable = true, insertable = true, updatable = true, length = 255)
    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    @Transient
    public DmpDevicePerformanceEntity getDevicePerformance() {
        return devicePerformance;
    }

    public void setDevicePerformance(DmpDevicePerformanceEntity devicePerformance) {
        this.devicePerformance = devicePerformance;
    }

    @Transient
    public String getTaskisok() {
        return taskisok;
    }

    public void setTaskisok(String taskisok) {
        this.taskisok = taskisok;
    }

    @Transient
    public String getOldDeviceVersion() {
        return oldDeviceVersion;
    }

    public void setOldDeviceVersion(String oldDeviceVersion) {
        this.oldDeviceVersion = oldDeviceVersion;
    }

    @Column(name = "reportfrequency", nullable = true, insertable = true, updatable = true)
    public Integer getReportfrequency() {
        return reportfrequency;
    }

    public void setReportfrequency(Integer reportfrequency) {
        this.reportfrequency = reportfrequency;
    }

    
    @Column(name = "systemtype", nullable = true, insertable = true, updatable = true, length = 1)
    public String getSystemtype() {
        return systemtype;
    }

    public void setSystemtype(String systemtype) {
        this.systemtype = systemtype;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof DmpDeviceInfoEntity)) return false;

        DmpDeviceInfoEntity that = (DmpDeviceInfoEntity) o;

        if (getSerialnumber() != null ? !getSerialnumber().equals(that.getSerialnumber()) : that.getSerialnumber() !=
                null)
            return false;
        if (getDeviceversion() != null ? !getDeviceversion().equals(that.getDeviceversion()) : that.getDeviceversion
                () != null)
            return false;
        if (getProduct() != null ? !getProduct().equals(that.getProduct()) : that.getProduct() != null) return false;
        if (getEth0Mac() != null ? !getEth0Mac().equals(that.getEth0Mac()) : that.getEth0Mac() != null) return false;
        if (getUpgradeversion() != null ? !getUpgradeversion().equals(that.getUpgradeversion()) : that
                .getUpgradeversion() != null)
            return false;
        if (getHastatus() != null ? !getHastatus().equals(that.getHastatus()) : that.getHastatus() != null)
            return false;
        if (getDevicetype() != null ? !getDevicetype().equals(that.getDevicetype()) : that.getDevicetype() != null)
            return false;
        if (getGroupid() != null ? !getGroupid().equals(that.getGroupid()) : that.getGroupid() != null) return false;
        if (getPhysicallocation() != null ? !getPhysicallocation().equals(that.getPhysicallocation()) : that
                .getPhysicallocation() != null)
            return false;
       /* if (getReporttime() != null ? !getReporttime().equals(that.getReporttime()) : that.getReporttime() != null)
            return false;*/
        if (getDevmail() != null ? !getDevmail().equals(that.getDevmail()) : that.getDevmail() != null) return false;
        if (getDevphone() != null ? !getDevphone().equals(that.getDevphone()) : that.getDevphone() != null)
            return false;
        if (getDevname() != null ? !getDevname().equals(that.getDevname()) : that.getDevname() != null) return false;
        if (getStermofvalidity() != null ? !getStermofvalidity().equals(that.getStermofvalidity()) : that
                .getStermofvalidity() != null)
            return false;
        if (getCreatetime() != null ? !getCreatetime().equals(that.getCreatetime()) : that.getCreatetime() != null)
            return false;
        /*if (getDevicePerformance() != null ? !getDevicePerformance().equals(that.getDevicePerformance()) : that
                .getDevicePerformance() != null)
            return false;*/
        if (getTaskisok() != null ? !getTaskisok().equals(that.getTaskisok()) : that.getTaskisok() != null)
            return false;
        if (getOldDeviceVersion() != null ? !getOldDeviceVersion().equals(that.getOldDeviceVersion()) : that
                .getOldDeviceVersion() != null)
            return false;
        if (getReportfrequency() != null ? !getReportfrequency().equals(that.getReportfrequency()) : that
                .getReportfrequency() != null)
            return false;
        if (getSystemtype() != null ? !getSystemtype().equals(that.getSystemtype()) : that.getSystemtype() != null)
            return false;
        /*ListUtils.compare(getComponentVersions(),that.getComponentVersions(), IConstants.SORT_MODE_ASC)
        * 判断两个list是否相等*/
        return !(getComponentVersions() != null ? !ListUtils.compare(getComponentVersions(),
                that.getComponentVersions(), IConstants.SORT_MODE_ASC) : that
                .getComponentVersions() != null);

    }

    @Override
    public int hashCode() {
        int result = getSerialnumber() != null ? getSerialnumber().hashCode() : 0;
        result = 31 * result + (getDeviceversion() != null ? getDeviceversion().hashCode() : 0);
        result = 31 * result + (getProduct() != null ? getProduct().hashCode() : 0);
        result = 31 * result + (getEth0Mac() != null ? getEth0Mac().hashCode() : 0);
        result = 31 * result + (getUpgradeversion() != null ? getUpgradeversion().hashCode() : 0);
        result = 31 * result + (getHastatus() != null ? getHastatus().hashCode() : 0);
        result = 31 * result + (getDevicetype() != null ? getDevicetype().hashCode() : 0);
        result = 31 * result + (getGroupid() != null ? getGroupid().hashCode() : 0);
        result = 31 * result + (getPhysicallocation() != null ? getPhysicallocation().hashCode() : 0);
        result = 31 * result + (getReporttime() != null ? getReporttime().hashCode() : 0);
        result = 31 * result + (getDevmail() != null ? getDevmail().hashCode() : 0);
        result = 31 * result + (getDevphone() != null ? getDevphone().hashCode() : 0);
        result = 31 * result + (getDevname() != null ? getDevname().hashCode() : 0);
        result = 31 * result + (getStermofvalidity() != null ? getStermofvalidity().hashCode() : 0);
        result = 31 * result + (getCreatetime() != null ? getCreatetime().hashCode() : 0);
        result = 31 * result + (getDevicePerformance() != null ? getDevicePerformance().hashCode() : 0);
        result = 31 * result + (getTaskisok() != null ? getTaskisok().hashCode() : 0);
        result = 31 * result + (getOldDeviceVersion() != null ? getOldDeviceVersion().hashCode() : 0);
        result = 31 * result + (getReportfrequency() != null ? getReportfrequency().hashCode() : 0);
        result = 31 * result + (getSystemtype() != null ? getSystemtype().hashCode() : 0);
        result = 31 * result + (getComponentVersions() != null ? getComponentVersions().hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "DmpDeviceInfoEntity{" +
                "serialnumber='" + serialnumber + '\'' +
                ", deviceversion='" + deviceversion + '\'' +
                ", product='" + product + '\'' +
                ", eth0Mac='" + eth0Mac + '\'' +
                ", upgradeversion='" + upgradeversion + '\'' +
                ", hastatus='" + hastatus + '\'' +
                ", devicetype='" + devicetype + '\'' +
                ", groupid='" + groupid + '\'' +
                ", physicallocation='" + physicallocation + '\'' +
                ", reporttime='" + reporttime + '\'' +
                ", devmail='" + devmail + '\'' +
                ", devphone='" + devphone + '\'' +
                ", devname='" + devname + '\'' +
                ", stermofvalidity='" + stermofvalidity + '\'' +
                ", createtime=" + createtime +
                ", devicePerformance=" + devicePerformance +
                ", taskisok='" + taskisok + '\'' +
                ", oldDeviceVersion='" + oldDeviceVersion + '\'' +
                ", reportfrequency=" + reportfrequency +
                ", systemtype='" + systemtype + '\'' +
                ", componentOldVersions=" + componentOldVersions +
                ", componentVersions=" + componentVersions +
                '}';
    }

    /**
     * 浅复制
     * @return
     */
    public Object clone() {
        DmpDeviceInfoEntity o = null;
        try {
            o = (DmpDeviceInfoEntity) super.clone();
            //对引用的对象也进行复制
            //o.devicePerformance = (DmpDevicePerformanceEntity) devicePerformance.clone();
        } catch (CloneNotSupportedException e) {
            System.out.println(e.toString());
        }
        return o;
    }

    /**
     * 通过串行化实现深复制 需要实现 implements Serializable
     * @return
     * @throws IOException
     * @throws ClassNotFoundException
     */
    public Object deepClone() throws IOException, ClassNotFoundException{
        //将对象写到流里
        ByteArrayOutputStream bo = new ByteArrayOutputStream();
        ObjectOutputStream oo = new ObjectOutputStream(bo);
        oo.writeObject(this);
        //从流里读出来
        ByteArrayInputStream bi = new ByteArrayInputStream(bo.toByteArray());
        ObjectInputStream oi = new ObjectInputStream(bi);
        return (oi.readObject());
    }


}
