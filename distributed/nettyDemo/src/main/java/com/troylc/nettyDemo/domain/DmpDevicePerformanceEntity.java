package com.troylc.nettyDemo.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;

/**
 * Created by Administrator on 2015/9/6.
 */
@Entity
@Table(name = "dmp_device_performance")
public class DmpDevicePerformanceEntity extends BaseDomain implements Cloneable {

    private String deviceid;
    /**
     * cpu状态
     */
    private String cpustatus;
    /**
     * 内存使用状态
     */
    private String memorystatus;
    /**
     * 设备接收流量，以octet为单位
     是以设备整体为对象，以tos系统处理的流量为基础统计的
     */
    private String receiveflow;
    /**
     * 设备发送流量，以octet为单位
     是以设备整体为对象，以tos系统处理的流量为基础统计的
     */
    private String transmitflow;
    /**
     * 并发连接数
     */
    private String currconn;
    /**
     * 每秒新建数
     */
    private String newcreatedconn;
    /**
     * 运行时长
     */
    private String runingtime;
    /**
     * 创建更新时间（记录每一次上报的性能时间)
     */
    private Date createtime;


    
    @Column(name = "deviceid", nullable = false, insertable = true, updatable = true, length = 32)
    public String getDeviceid() {
        return deviceid;
    }

    public void setDeviceid(String deviceid) {
        this.deviceid = deviceid;
    }

    
    @Column(name = "cpustatus", nullable = true, insertable = true, updatable = true, length = 80)
    public String getCpustatus() {
        return cpustatus;
    }

    public void setCpustatus(String cpustatus) {
        this.cpustatus = cpustatus;
    }

    
    @Column(name = "memorystatus", nullable = true, insertable = true, updatable = true, length = 80)
    public String getMemorystatus() {
        return memorystatus;
    }

    public void setMemorystatus(String memorystatus) {
        this.memorystatus = memorystatus;
    }

    
    @Column(name = "receiveflow", nullable = true, insertable = true, updatable = true, length = 80)
    public String getReceiveflow() {
        return receiveflow;
    }

    public void setReceiveflow(String receiveflow) {
        this.receiveflow = receiveflow;
    }

    
    @Column(name = "transmitflow", nullable = true, insertable = true, updatable = true, length = 80)
    public String getTransmitflow() {
        return transmitflow;
    }

    public void setTransmitflow(String transmitflow) {
        this.transmitflow = transmitflow;
    }

    
    @Column(name = "currconn", nullable = true, insertable = true, updatable = true, length = 10)
    public String getCurrconn() {
        return currconn;
    }

    public void setCurrconn(String currconn) {
        this.currconn = currconn;
    }

    
    @Column(name = "newcreatedconn", nullable = true, insertable = true, updatable = true, length = 10)
    public String getNewcreatedconn() {
        return newcreatedconn;
    }

    public void setNewcreatedconn(String newcreatedconn) {
        this.newcreatedconn = newcreatedconn;
    }

    
    @Column(name = "runingtime", nullable = true, insertable = true, updatable = true, length = 128)
    public String getRuningtime() {
        return runingtime;
    }

    public void setRuningtime(String runingtime) {
        this.runingtime = runingtime;
    }

    
    @Column(name = "createtime", nullable = true, insertable = true, updatable = true)
    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    private String ext0;

    
    @Column(name = "ext0", nullable = true, insertable = true, updatable = true, length = 80)
    public String getExt0() {
        return ext0;
    }

    public void setExt0(String ext0) {
        this.ext0 = ext0;
    }

    private String ext1;

    
    @Column(name = "ext1", nullable = true, insertable = true, updatable = true, length = 80)
    public String getExt1() {
        return ext1;
    }

    public void setExt1(String ext1) {
        this.ext1 = ext1;
    }

    private String ext2;

    
    @Column(name = "ext2", nullable = true, insertable = true, updatable = true, length = 80)
    public String getExt2() {
        return ext2;
    }

    public void setExt2(String ext2) {
        this.ext2 = ext2;
    }

    private String ext3;

    
    @Column(name = "ext3", nullable = true, insertable = true, updatable = true, length = 80)
    public String getExt3() {
        return ext3;
    }

    public void setExt3(String ext3) {
        this.ext3 = ext3;
    }

    private String ext4;

    
    @Column(name = "ext4", nullable = true, insertable = true, updatable = true, length = 80)
    public String getExt4() {
        return ext4;
    }

    public void setExt4(String ext4) {
        this.ext4 = ext4;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof DmpDevicePerformanceEntity)) return false;

        DmpDevicePerformanceEntity that = (DmpDevicePerformanceEntity) o;

        if (getDeviceid() != null ? !getDeviceid().equals(that.getDeviceid()) : that.getDeviceid() != null)
            return false;
        if (getCpustatus() != null ? !getCpustatus().equals(that.getCpustatus()) : that.getCpustatus() != null)
            return false;
        if (getMemorystatus() != null ? !getMemorystatus().equals(that.getMemorystatus()) : that.getMemorystatus() !=
                null)
            return false;
        if (getReceiveflow() != null ? !getReceiveflow().equals(that.getReceiveflow()) : that.getReceiveflow() != null)
            return false;
        if (getTransmitflow() != null ? !getTransmitflow().equals(that.getTransmitflow()) : that.getTransmitflow() !=
                null)
            return false;
        if (getCurrconn() != null ? !getCurrconn().equals(that.getCurrconn()) : that.getCurrconn() != null)
            return false;
        if (getNewcreatedconn() != null ? !getNewcreatedconn().equals(that.getNewcreatedconn()) : that
                .getNewcreatedconn() != null)
            return false;
        if (getRuningtime() != null ? !getRuningtime().equals(that.getRuningtime()) : that.getRuningtime() != null)
            return false;
        if (getCreatetime() != null ? !getCreatetime().equals(that.getCreatetime()) : that.getCreatetime() != null)
            return false;
        if (getExt0() != null ? !getExt0().equals(that.getExt0()) : that.getExt0() != null) return false;
        if (getExt1() != null ? !getExt1().equals(that.getExt1()) : that.getExt1() != null) return false;
        if (getExt2() != null ? !getExt2().equals(that.getExt2()) : that.getExt2() != null) return false;
        if (getExt3() != null ? !getExt3().equals(that.getExt3()) : that.getExt3() != null) return false;
        return !(getExt4() != null ? !getExt4().equals(that.getExt4()) : that.getExt4() != null);

    }

    @Override
    public int hashCode() {
        int result = getDeviceid() != null ? getDeviceid().hashCode() : 0;
        result = 31 * result + (getCpustatus() != null ? getCpustatus().hashCode() : 0);
        result = 31 * result + (getMemorystatus() != null ? getMemorystatus().hashCode() : 0);
        result = 31 * result + (getReceiveflow() != null ? getReceiveflow().hashCode() : 0);
        result = 31 * result + (getTransmitflow() != null ? getTransmitflow().hashCode() : 0);
        result = 31 * result + (getCurrconn() != null ? getCurrconn().hashCode() : 0);
        result = 31 * result + (getNewcreatedconn() != null ? getNewcreatedconn().hashCode() : 0);
        result = 31 * result + (getRuningtime() != null ? getRuningtime().hashCode() : 0);
        result = 31 * result + (getCreatetime() != null ? getCreatetime().hashCode() : 0);
        result = 31 * result + (getExt0() != null ? getExt0().hashCode() : 0);
        result = 31 * result + (getExt1() != null ? getExt1().hashCode() : 0);
        result = 31 * result + (getExt2() != null ? getExt2().hashCode() : 0);
        result = 31 * result + (getExt3() != null ? getExt3().hashCode() : 0);
        result = 31 * result + (getExt4() != null ? getExt4().hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "DmpDevicePerformanceEntity{" +
                "deviceid='" + deviceid + '\'' +
                ", cpustatus='" + cpustatus + '\'' +
                ", memorystatus='" + memorystatus + '\'' +
                ", receiveflow='" + receiveflow + '\'' +
                ", transmitflow='" + transmitflow + '\'' +
                ", currconn='" + currconn + '\'' +
                ", newcreatedconn='" + newcreatedconn + '\'' +
                ", runingtime='" + runingtime + '\'' +
                ", createtime=" + createtime +
                ", ext0='" + ext0 + '\'' +
                ", ext1='" + ext1 + '\'' +
                ", ext2='" + ext2 + '\'' +
                ", ext3='" + ext3 + '\'' +
                ", ext4='" + ext4 + '\'' +
                '}';
    }


    /**
     * 深度复制
     * @return
     */
    public Object clone() {
        DmpDevicePerformanceEntity o = null;
        try {
            o = (DmpDevicePerformanceEntity) super.clone();
            //对引用的对象也进行复制
        } catch (CloneNotSupportedException e) {
            System.out.println(e.toString());
        }
        return o;
    }

}
