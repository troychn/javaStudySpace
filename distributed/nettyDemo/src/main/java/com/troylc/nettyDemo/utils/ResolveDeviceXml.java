package com.troylc.nettyDemo.utils;

import com.troylc.nettyDemo.domain.DmpComponentVersion;
import com.troylc.nettyDemo.domain.DmpDeviceInfoEntity;
import com.troylc.nettyDemo.domain.DmpDevicePerformanceEntity;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by lc on 2015/9/6.
 */
public class ResolveDeviceXml {

    private static Logger log = LoggerFactory.getLogger(ResolveDeviceXml.class);

    /**
     * 判断设备上报的XML是否正确，
     * @param root xml根节点
     * @return false传输数据有问题，true数据正常
     */
    public static boolean JudgeXml(Element root, String serialno ) {
        boolean flag = false;
        if (root == null) return flag;
        /*
         * 在xml文件中的任意节点下查找是否有serialno这个节点；
         * 一条斜线表示根路径，两条斜线表示任意路径，
         * 就是说如果你写 /serialno的时候只有这个serialno是当前的根节点才能找到，//serialno 不管在哪一层都能找到
         */
        List<Element> serialnumberList = root.selectNodes("//serialno");
        if(serialnumberList == null || serialnumberList.size() == 0){
            log.error("serialnumber设备序列号不能为空！");
            return flag;
        }
        List<Element> deviceversionList = root.selectNodes("//version");
        if (deviceversionList == null || deviceversionList.size() == 0) {
            log.error("deviceversionList设备版本不能为空！");
            return flag;
        }
        List<Element> eth0MacList = root.selectNodes("//eth0macaddr");
        if (eth0MacList == null || eth0MacList.size() == 0) {
            log.error("eth0MacList eth0mac地址不能为空！");
            return flag;
        }
        List<Element> productList = root.selectNodes("//product");
        if (productList == null || productList.size() == 0) {
            log.error("productList 设备型号不能为空！");
            return flag;
        }
        if ((serialnumberList != null && serialnumberList.size() >= 0)) {
            for(Element element:serialnumberList){
                if(element.getText() != null && element.getText().trim().equals(serialno.trim())){
                    flag = true;
                } else {
                    flag = false;
                    log.error("接收到的XML信息:"+ element.getText() +"与头部信息中:"+ serialno+"的序列号，不一致！");
                }
            }
        } else {
            log.error("传入的数据必填项为空");
        }
        return flag;
    }
    /**
     * 解析上报信息XML，并以设备信息返回
     * @param root xml根节点
     * @param deviceInfo 设备基础对象
     * @param devicePerformance 设备性能对象
     * @param prefix 输出格式
     * @return 0传输数据有问题，1数据正常
     */
    public static DmpDeviceInfoEntity readNode(Element root, DmpDeviceInfoEntity deviceInfo, DmpDevicePerformanceEntity devicePerformance,String prefix) {
        if (root == null) return null;
        // 获取属性
        /*List<Attribute> attrs = root.attributes();
        if (attrs != null && attrs.size() > 0) {
            System.err.print(prefix);
            for (Attribute attr : attrs) {
                System.err.print(attr.getValue() + " ");
            }
            System.err.println();
        }*/
        //devicePerformance = new DmpDevicePerformanceEntity();
        //获取节点内容
        List<Element> childNodes = root.elements();
        prefix += "\t";
        for (Element e : childNodes) {
            if (e.isTextOnly()) {
                log.debug(prefix);
                log.debug("Element: " + e.getName() + "=" + e.getText());
                switch (e.getName()){
                    case "serialno":
                       deviceInfo.setSerialnumber(e.getText());
                        break;
                    case "version":
                       deviceInfo.setDeviceversion(e.getText());
                        break;
                    case "eth0macaddr":
                       deviceInfo.setEth0Mac(e.getText());
                        break;
                    case "status":
                       deviceInfo.setHastatus(e.getText());
                        break;
                    case "taskstatus":
                        deviceInfo.setTaskisok(e.getText());
                        break;
                    case "product":
                        deviceInfo.setProduct(e.getText());
                        break;
                    case "name":
                        deviceInfo.setDevname(e.getText());
                        break;
                    case "phonenumber":
                        deviceInfo.setDevphone(e.getText());
                        break;
                    case "email":
                        deviceInfo.setDevmail(e.getText());
                        break;
                    case "cpuload":
                        devicePerformance.setCpustatus(e.getText());
                        break;
                    case "memload":
                        devicePerformance.setMemorystatus(e.getText());
                        break;
                    case "receive":
                        devicePerformance.setReceiveflow(e.getText());
                        break;
                    case "transmit":
                        devicePerformance.setTransmitflow(e.getText());
                        break;
                    case "currentconnect":
                        devicePerformance.setCurrconn(e.getText());
                        break;
                    case "cps":
                        devicePerformance.setNewcreatedconn(e.getText());
                        break;
                    case "uptime":
                        devicePerformance.setRuningtime(e.getText());
                        break;
                    default:
                        break;
                }
            } else {
               deviceInfo = readNode(e, deviceInfo, devicePerformance, prefix);
            }
        }
        //保存设备性能信息
        if (devicePerformance != null) {
            deviceInfo.setDevicePerformance(devicePerformance);
        }
        log.debug("");
        return deviceInfo;
    }

    /**
     * 解析上报信息XML，并以设备信息返回
     *
     * @param root              xml根节点
     * @param deviceInfo        设备基础对象
     * @param systemtype      系统类型
     * @return 0传输数据有问题，1数据正常
     */
    public static DmpDeviceInfoEntity readTosNodes(Element root, DmpDeviceInfoEntity deviceInfo, String systemtype)
            throws Exception {
        if (root == null) return null;
        // 获取属性
        /*List<Attribute> attrs = root.attributes();
        if (attrs != null && attrs.size() > 0) {
            System.err.print(prefix);
            for (Attribute attr : attrs) {
                System.err.print(attr.getValue() + " ");
            }
            System.err.println();
        }*/
        //devicePerformance = new DmpDevicePerformanceEntity();
        //获取节点内容
        List<Element> childNodes = root.elements();
        //prefix += "\t";
        for (Element e : childNodes) {
            if(e.getName() != null && "components".equals(e.getName())){
                continue;
            }
            if (e.isTextOnly()) {
                //log.debug(prefix);
                log.debug("Element: " + e.getName() + "=" + e.getText());
                element2Obj(e, deviceInfo);
            } else {
                //递归调用下一层继续解析。
                deviceInfo = readTosNodes(e, deviceInfo, systemtype);
            }
        }
        return deviceInfo;
    }
    /**
     * 解析上报信息XML，并以设备信息返回
     *
     * @param root              xml根节点
     * @param deviceInfo        设备基础对象
     * @param systemtype      系统类型
     * @return 0传输数据有问题，1数据正常
     */
    public static DmpDeviceInfoEntity readNGTosNodes(Element root, DmpDeviceInfoEntity deviceInfo, String systemtype)
            throws Exception {
        if (root == null) return null;
        deviceInfo = readTosNodes(root,deviceInfo,systemtype);
        log.debug("-------------deviceInfo--------------" + deviceInfo);
        if(deviceInfo.getComponentOldVersions() == null && deviceInfo.getComponentVersions() != null){
            deviceInfo.setComponentOldVersions(new ArrayList<DmpComponentVersion>());
            deviceInfo.getComponentOldVersions().addAll(deviceInfo.getComponentVersions());
            deviceInfo.getComponentVersions().clear();
        } else {
            deviceInfo.setComponentVersions(new ArrayList<DmpComponentVersion>());
        }
        //List<Element> childNodes = root.elements();
        List<Element> componentsList = root.selectNodes("//components");
        for (Element e : componentsList) {
                Date currentTime = new Date(System.currentTimeMillis());
                List<Element> components = e.elements();
                for (Element component : components) {
                    DmpComponentVersion dcv = new DmpComponentVersion();
                    List<Element> comp = component.elements();
                    for (Element element : comp) {
                        String name = element.getName();
                        String value = element.getStringValue();
                        if (name.equals("name")) {
                            dcv.setComponentname(value);
                        } else if (name.equals("version")) {
                            dcv.setComponentversion(value);
                        }
                    }
                    if (dcv.getComponentname() != null && !"".equals(dcv.getComponentname())
                            && dcv.getComponentversion() != null && !"".equals(dcv.getComponentversion())) {
                        dcv.setDeviceversion(deviceInfo.getDeviceversion());
                        dcv.setDeviceuuid(deviceInfo.getUuid());
                        dcv.setDevicetype(deviceInfo.getDevicetype());
                        dcv.setDeviceserialno(deviceInfo.getSerialnumber());
                    }
                    if(deviceInfo.getComponentOldVersions() != null) {
                        for (DmpComponentVersion componentOldV : deviceInfo.getComponentOldVersions()) {
                            if (dcv.getComponentname().equals(componentOldV.getComponentname())) {
                                dcv.setUuid(componentOldV.getUuid());
                            }
                        }
                    }
                    deviceInfo.getComponentVersions().add(dcv);
                }
        }
        return deviceInfo;
    }


    /**
     * 将xml的Element节点转换成设备基本信息、设备性能信息对象
     * @param e xml的Element节点
     * @param deviceInfo 设备基本信息
     */
    public static void element2Obj(Element e, DmpDeviceInfoEntity deviceInfo) throws Exception{
        switch (e.getName()) {
            case "serialno":
                deviceInfo.setSerialnumber(e.getText());
                break;
            case "version":
                deviceInfo.setDeviceversion(e.getText());
                break;
            case "eth0macaddr":
                deviceInfo.setEth0Mac(e.getText());
                break;
            case "status":
                deviceInfo.setHastatus(e.getText());
                break;
            case "taskstatus":
                deviceInfo.setTaskisok(e.getText());
                break;
            case "product":
                deviceInfo.setProduct(e.getText());
                break;
            case "name":
                deviceInfo.setDevname(e.getText());
                break;
            case "phonenumber":
                deviceInfo.setDevphone(e.getText());
                break;
            case "email":
                deviceInfo.setDevmail(e.getText());
                break;
            case "cpuload":
                deviceInfo.getDevicePerformance().setCpustatus(e.getText());
                break;
            case "memload":
                deviceInfo.getDevicePerformance().setMemorystatus(e.getText());
                break;
            case "receive":
                deviceInfo.getDevicePerformance().setReceiveflow(e.getText());
                break;
            case "transmit":
                deviceInfo.getDevicePerformance().setTransmitflow(e.getText());
                break;
            case "currentconnect":
                deviceInfo.getDevicePerformance().setCurrconn(e.getText());
                break;
            case "cps":
                deviceInfo.getDevicePerformance().setNewcreatedconn(e.getText());
                break;
            case "uptime":
                deviceInfo.getDevicePerformance().setRuningtime(e.getText());
                break;
            default:
                break;
        }
    }



    /**
     * 测试设备xml解析
     * @param args
     */
    public static void main(String[] args) {
        try {
            SAXReader reader = new SAXReader();
            InputStream in = ResolveDeviceXml.class.getClassLoader().getResourceAsStream("bashfile/dom4j-modify.xml");

            //InputStream in = TestDom4j.class.getClassLoader().getResourceAsStream("dom4j-modify.xml");

            Document doc = reader.read(in);
            Element root = doc.getRootElement();
            if (JudgeXml(root,"0013320b00e3.001")) {
                DmpDeviceInfoEntity deviceInfo = readTosNodes(root, new DmpDeviceInfoEntity(new
                        DmpDevicePerformanceEntity()), "1");
                System.out.println(deviceInfo);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
