package com.troylc.nettyDemo.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by Administrator on 2015/12/1.
 */
@Entity
@Table(name = "dmp_component_version")
public class DmpComponentVersion extends BaseDomain implements Comparable<DmpComponentVersion> {
    /**
     * 组件名称
     */
    private String componentname;
    /**
     * 组件版本
     */
    private String componentversion;
    /**
     * 设备序列号
     */
    private String deviceserialno;
    /**
     * 设备ID
     */
    private String deviceuuid;
    /**
     * 设备类型
     */
    private String devicetype;
    /**
     * 设备版本
     */
    private String deviceversion;


    @Column(name = "componentname", nullable = false, insertable = true, updatable = true, length =
            128)
    public String getComponentname() {
        return componentname;
    }

    public void setComponentname(String componentname) {
        this.componentname = componentname;
    }

    
    @Column(name = "componentversion", nullable = true, insertable = true, updatable = true, length
            = 128)
    public String getComponentversion() {
        return componentversion;
    }

    public void setComponentversion(String componentversion) {
        this.componentversion = componentversion;
    }

    
    @Column(name = "deviceserialno", nullable = true, insertable = true, updatable = true, length =
            128)
    public String getDeviceserialno() {
        return deviceserialno;
    }

    public void setDeviceserialno(String deviceserialno) {
        this.deviceserialno = deviceserialno;
    }

    
    @Column(name = "deviceuuid", nullable = true, insertable = true, updatable = true, length = 32)
    public String getDeviceuuid() {
        return deviceuuid;
    }

    public void setDeviceuuid(String deviceuuid) {
        this.deviceuuid = deviceuuid;
    }

    
    @Column(name = "devicetype", nullable = true, insertable = true, updatable = true, length = 128)
    public String getDevicetype() {
        return devicetype;
    }

    public void setDevicetype(String devicetype) {
        this.devicetype = devicetype;
    }

    
    @Column(name = "deviceversion", nullable = true, insertable = true, updatable = true, length =
            128)
    public String getDeviceversion() {
        return deviceversion;
    }

    public void setDeviceversion(String deviceversion) {
        this.deviceversion = deviceversion;
    }

    
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DmpComponentVersion that = (DmpComponentVersion) o;

        if (uuid != null ? !uuid.equals(that.uuid) : that.uuid != null) return false;
        if (componentname != null ? !componentname.equals(that.componentname) : that.componentname != null)
            return false;
        if (componentversion != null ? !componentversion.equals(that.componentversion) : that.componentversion != null)
            return false;
        if (deviceserialno != null ? !deviceserialno.equals(that.deviceserialno) : that.deviceserialno != null)
            return false;
        if (deviceuuid != null ? !deviceuuid.equals(that.deviceuuid) : that.deviceuuid != null) return false;
        if (devicetype != null ? !devicetype.equals(that.devicetype) : that.devicetype != null) return false;
        if (deviceversion != null ? !deviceversion.equals(that.deviceversion) : that.deviceversion != null)
            return false;
        return true;
    }

    @Override
    public int hashCode() {
        int result = uuid != null ? uuid.hashCode() : 0;
        result = 31 * result + (componentname != null ? componentname.hashCode() : 0);
        result = 31 * result + (componentversion != null ? componentversion.hashCode() : 0);
        result = 31 * result + (deviceserialno != null ? deviceserialno.hashCode() : 0);
        result = 31 * result + (deviceuuid != null ? deviceuuid.hashCode() : 0);
        result = 31 * result + (devicetype != null ? devicetype.hashCode() : 0);
        result = 31 * result + (deviceversion != null ? deviceversion.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "DmpComponentVersion{" +
                "uuid='" + uuid + '\'' +
                ", componentname='" + componentname + '\'' +
                ", componentversion='" + componentversion + '\'' +
                ", deviceserialno='" + deviceserialno + '\'' +
                ", deviceuuid='" + deviceuuid + '\'' +
                ", devicetype='" + devicetype + '\'' +
                ", deviceversion='" + deviceversion + '\'' +
                '}';
    }

    public DmpComponentVersion() {
    }

    /**
     * Compares this object with the specified object for order.  Returns a
     * negative integer, zero, or a positive integer as this object is less
     * than, equal to, or greater than the specified object.
     * <p/>
     * <p>The implementor must ensure <tt>sgn(x.compareTo(y)) ==
     * -sgn(y.compareTo(x))</tt> for all <tt>x</tt> and <tt>y</tt>.  (This
     * implies that <tt>x.compareTo(y)</tt> must throw an exception iff
     * <tt>y.compareTo(x)</tt> throws an exception.)
     * <p/>
     * <p>The implementor must also ensure that the relation is transitive:
     * <tt>(x.compareTo(y)&gt;0 &amp;&amp; y.compareTo(z)&gt;0)</tt> implies
     * <tt>x.compareTo(z)&gt;0</tt>.
     * <p/>
     * <p>Finally, the implementor must ensure that <tt>x.compareTo(y)==0</tt>
     * implies that <tt>sgn(x.compareTo(z)) == sgn(y.compareTo(z))</tt>, for
     * all <tt>z</tt>.
     * <p/>
     * <p>It is strongly recommended, but <i>not</i> strictly required that
     * <tt>(x.compareTo(y)==0) == (x.equals(y))</tt>.  Generally speaking, any
     * class that implements the <tt>Comparable</tt> interface and violates
     * this condition should clearly indicate this fact.  The recommended
     * language is "Note: this class has a natural ordering that is
     * inconsistent with equals."
     * <p/>
     * <p>In the foregoing description, the notation
     * <tt>sgn(</tt><i>expression</i><tt>)</tt> designates the mathematical
     * <i>signum</i> function, which is defined to return one of <tt>-1</tt>,
     * <tt>0</tt>, or <tt>1</tt> according to whether the value of
     * <i>expression</i> is negative, zero or positive.
     *
     * @param o the object to be compared.
     * @return a negative integer, zero, or a positive integer as this object
     * is less than, equal to, or greater than the specified object.
     * @throws NullPointerException if the specified object is null
     * @throws ClassCastException   if the specified object's type prevents it
     *                              from being compared to this object.
     */
    @Override
    public int compareTo(DmpComponentVersion o) {
        if(o instanceof DmpComponentVersion){
            return componentname.compareTo(o.componentname);
        }
        return 0;
    }
}
