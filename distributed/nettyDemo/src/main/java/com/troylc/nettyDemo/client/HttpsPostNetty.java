package com.troylc.nettyDemo.client;

import com.troylc.nettyDemo.utils.MyHostnameVerifier;

import javax.net.ssl.*;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.GeneralSecurityException;
import java.security.KeyStore;

/**
 * Created by cao on 2015/8/25.
 */
public class HttpsPostNetty {


    static String[] serialnos = {"K1011041660"/*, "Q1504316186", "Q1506330262", "K1010036377", "Q1503308912", "Q1412291532", "K1111103626", "Q1410272240", "Q1406233190", "K1308225733", "Q1508342344", "Q1407245178", "K1306215141", "Q1502304300",
"Q1503308900", "K1209157799", "Q1312178930", "Q1507339011", "Q1411285824", "Q1507342340", "Q1312187218", "Q1507342335", "Q1401197359", "K1301190661", "Q1406231248", "Q1406230074", "Q1504112312", "Q1507332509", "K1308227628", "Q1507333413", "Q1505319746", "K1210165545", "Q1501301305", "Q1503307641", "Q1508340664", "Q1405219688", "K1304202590", "Q1409266643", "Q1402200226", "K1101055428", "Q1506328751", "K1108085939", "K1305208478", "K1212184368", "K1105069248", "K1212180946", "Q1407247208", "Q1411278583", "Q1507342334", "Q1507330818", "Q1504316150", "K1309229860", "Q1410272250", "Q1508344373", "Q1405220016", "Q1507337732", "Q1501298727", "Q1411286809", "Q1402199963", "Q1507331874", "Q1506326945", "Q1501302503", "K1111103627", "Q1501301304", "K1203119196", "Q1507342333", "Q1309152143", "K1304205078", "Q1508342563", "K1304207040", "Q1507332759", "Q1412291534", "Q1503307697", "K1111103625", "Q0000000002", "K1108085940", "Q1405213366", "K1301190662", "Q1309150568", "K1112109855", "Q1506328399", "Q1507337731", "Q1412291535", "K1108085942", "Q1312178782", "Q1501301649", "Q1508342562", "Q1501299677", "Q1407245314", "Q1506323961", "Q120214433", "Q1409267065", "Q1507333739", "Q1409261460", "Q1410276123", "K1304205536", "Q1406231165", "Q1506326981", "Q1507338038", "Q1202144338", "K1304207057", "Q1410272242", "Q1407245315", "Q1502305334", "K1211171511", "Q1507333742", "Q1505322561", "K1308228242", "Q1507342337", "Q1507333419", "K1008025188", "Q1409261625", "K1207143205", "Q1411285412", "Q1309152142", "Q1506323949", "Q1507331873", "Q1508342346", "Q1407245309", "Q1509351890", "Q1403204024", "Q1501301307", "Q1410275186", "Q1502305127", "Q1311169646", "Q1504311821", "Q1409267059", "Q1508342341", "Q1312183622", "Q1507330807", "Q1507330808", "Q1407245310", "Q1505322569", "Q1409267061", "K1212184363", "Q1412292073", "K1212181559", "Q1502305120", "Q1507338967", "Q1506329056", "Q1410272248", "Q1412297169", "Q1411278585", "Q1506325014", "Q1412294070", "Q1412290864", "Q1411289014", "Q1502304464", "Q1508345999", "Q1502304450", "Q1408254305", "Q1410272246", "Q1111140879", "Q1505319745", "Q1409267196", "Q1506329623", "Q1506324473", "K1111103637", "Q1402200225", "Q1410276980", "Q1411289026", "Q1407243639", "Q1404211639", "Q1402200222", "Q1412290865", "Q1412292096", "Q1508342565", "Q00000000", "Q1501301648", "Q1506323941", "Q1411286180", "Q1507337480", "Q1504314437", "Q1403205109", "Q1504317604", "K1308227833", "Q1502304467", "Q1408252213", "Q1501301606", "K1202114068", "Q1506323938", "Q1411280379", "Q1408256878", "Q1411286485", "K1306215126", "Q1202144332", "Q1410275983", "Q1310155446", "Q1202144326", "Q1412294059", "Q1505317957", "Q1409266203", "Q1507330795", "Q1411280794", "K1111103635", "Q1405219327", "Q1406230073", "Q1202144330", "Q1410272251", "Q1507337477", "K1308228208", "K1101055423", "Q1501301634", "K1306214551", "Q1412297170", "Q1409268507", "Q1409266204", "Q1406230084", "Q1507330831", "Q1507330832", "Q1506323971", "Q1407245312", "Q1507342338", "Q1407247133", "Q1507339111", "Q1202144333", "Q1407244304", "Q1406231249", "Q1504313030", "Q1309150566", "K1210165544", "Q1502304670", "Q1505318797", "Q1406227737", "Q1412291683", "Q1312182724", "Q1507333412", "Q1501301300", "Q1401192108", "Q1203145625", "Q1501301640", "Q1405224249", "Q1508345079", "Q1203145624", "Q1505320191", "Q1505320405", "K1212181558", "K1003004312", "Q1503306530", "K1111103631", "Q1508342609", "Q1503308902", "Q1203145623", "Q1509348647", "Q1507333752", "Q1411278584", "Q1507331853", "Q1402200224", "Q1403206136", "Q1411280469", "Q1409267062", "Q1503308901", "K1111103629", "Q1411288101", "Q1407244302", "Q1406230180", "Q1410272252", "Q1405218232", "Q1508342336", "Q1309152141", "Q1406228308", "qq", "Q1410271713", "K1111103632", "K1309231062", "Q1409267195", "K1101055425", "Q1407243638", "K1006013450", "K1210160050", "Q1502304885", "k1110098961", "Q1505320407", "Q1502304847", "Q1509347399", "Q1409267064", "Q1508340663", "Q1505322547", "Q1410274332", "Q1410276122", "Q1403206139", "Q1405218233", "K1101055426", "K1309230361", "K1210160054", "Q1410270215", "Q1502304468", "Q1412297167", "Q1507337481", "K1212182322", "K1111103634", "KA131000278", "Q1501301608", "Q1508340702", "Q1502304449", "Q1504314804", "K1108089276", "Q1507333738", "K1104066304", "K1111103638", "Q1410276673", "Q1506323951", "K1101055427", "Q1504315661", "Q1402201293", "Q1410272247", "Q1411289015", "K1209155972", "Q1506328526", "Q1402199951", "Q1504316201", "Q1408251904", "K1111103633", "Q1408259106", "Q1507332535", "K1212185200", "Q1503309941", "K1108085934", "Q1312180302", "Q1503310124", "Q1410272245", "Q15093484648", "Q1403205103", "Q1501299501", "Q1505319747", "K1111103636", "K1212176152", "K1309229859", "Q1406226693", "Q1507333737", "Q1409261626", "Q1502305122", "Q1507333414", "K1304207039", "Q1410272243", "K1306215752", "Q1501302505", "Q1507333740", "Q1506328391", "Q1506323954", "K1504315850", "Q1507333415", "Q1504316189", "Q1405218230", "K1108086717", "Q1504311813", "K1207143195", "Q1312180303", "Q1411277899", "Q1403207194", "K1207139122", "Q1409266117", "Q1508346760", "K1304205903", "Q1501304060", "Q1508342343", "Q1508342332", "Q1509349320", "Q1507337738", "Q1505318796", "K1304207056", "Q1507337479", "K1203119194", "Q1509349848", "Q1506327938", "K1108085937", "Q15012318256", "Q1309152144", "Q1503311004", "Q1506329622", "Q1508342557", "Q1412291680", "Q1501299524", "Q1409267197", "Q1407235713", "Q1312179671", "Q1508343657", "Q1309150569", "K1309231100", "Q1508342560", "K1210160058", "K1101055429", "Q1405218231", "K1212175811", "Q1406228307", "Q1507333402", "Q1507333735", "Q1508343895", "Q1508340661", "Q0000000000", "K1309231063", "Q1409261635", "Q1409263992", "Q1507330810", "Q1507330811", "Q1405224671", "Q1508340658", "K1308227834", "Q1407235671", "Q000000000", "K1205128070", "Q1412291597", "K1308227828", "Q1508341744", "Q1410272255", "Q1407245110", "Q1507330801", "Q1501301303", "Q1411283506", "Q1504314301", "Q1506328718", "Q1407235935", "Q1401197399", "Q1505320431", "Q1508344372", "Q1501302504", "Q1501301607", "Q1507337751", "K1108085929", "Q1504316730", "Q1408256877", "Q1507342342", "Q1503305928", "Q1411284993", "K1108085935", "Q1412297168", "K1211173650", "K1308227831", "Q1508342345", "Q1503308898", "Q1202144327", "Q1502305123", "Q1501301633", "Q1411286185", "Q1504311826", "Q1506328796", "Q1508341356", "Q1402200223", "Q1501301641", "Q1507332113", "Q1507332114", "K1108085932", "K1306215140", "Q000000000005", "Q1509353588", "Q1503308899", "Q1501298750", "Q1503305927", "Q1503310354", "Q1508345906", "K1308225732", "Q1508345114", "Q1403206141", "K1005008591", "Q1406232529", "K1308227829", "Q1509351357", "Q1202144334", "K1111103628", "Q1406230086", "K1111103630", "Q1311163144", "Q1504313832", "K1305207674", "Q1501301642", "Q123123123123", "Q1506324468", "Q1503308897", "Q1508343636", "K1108085941", "Q1506323942", "Q1501300640", "K1212183948", "Q1506327382", "Q1403206134", "Q1404213027", "Q1503307699", "Q1410271714", "Q1509347697", "Q1409261624", "Q1504316720", "Q1505319748", "Q1507330829", "Q1507330830", "K1308227830", "Q1402201839", "Q1506324652", "Q1410272700", "Q1504311815", "Q1507333418", "Q1404211012", "Q1404211638", "Q1504311822", "Q1506326263", "Q1409261628", "Q1507332518", "Q1409267697", "Q1505322585", "Q1508342558", "Q1403205076", "Q1507337699", "Q1311173468", "Q1407246360", "K1204124117", "Q1312189682", "Q1406227238", "K1108085931", "K1304202441", "Q1408259049", "Q1407247209", "Q1507331085", "Q1202144325", "Q1506328525", "K1309230360", "Q1412293443", "Q1508345660", "Q1509347692", "Q1407245313", "Q1412294051", "K1108085933", "Q1409261627", "Q1506324651", "Q1507331872", "Q1312178073", "Q1508340659", "Q1506323914", "Q1406232625", "Q1507333736", "Q1411278582", "Q1509354665", "Q1507342339", "K1101055424", "Q1406233356", "Q1311171200", "Q1411283465", "Q000000001", "Q1409267698", "Q1407245311", "Q1508342559", "Q1507330780", "Q1507339110", "K1308227832", "Q1411289025", "Q1407248802", "Q00000000005", "Q1412297166", "Q1504311806", "Q1507333417", "Q0000000003", "Q1502304469", "K1105069247", "Q1504312231", "K1005008592", "Q1501302413", "K1108085930", "Q00000000004", "Q1406230083", "Q1406230081", "Q1410272249", "K1108085943", "Q1411278594", "Q1506328746", "Q1505318601", "Q1410271180", "K1210160396", "Q1508340662", "Q1505322774", "Q1506328376", "Q1506326937"*/
    };



   /* *
     * 获得KeyStore.
     *
     * @param keyStorePath 密钥库路径
     * @param password     密码
     * @return 密钥库
     * @throws Exception
     */
    public static KeyStore getKeyStore(String password, String keyStorePath)
            throws Exception {
        // 实例化密钥库
        KeyStore ks = KeyStore.getInstance("JKS");
        // 获得密钥库文件流
        FileInputStream is = new FileInputStream(keyStorePath);
        // 加载密钥库
        ks.load(is, password.toCharArray());
        // 关闭密钥库文件流
        is.close();
        return ks;
    }

    /*
     * 获得SSLSocketFactory.
     *
     * @param password       密码
     * @param keyStorePath   密钥库路径
     * @param trustStorePath 信任库路径
     * @return SSLSocketFactory
     * @throws Exception
    */
    public static SSLContext getSSLContext(String password,
                                           String keyStorePath, String trustStorePath) throws Exception {
        // 实例化密钥库
        KeyManagerFactory keyManagerFactory = KeyManagerFactory
                .getInstance(KeyManagerFactory.getDefaultAlgorithm());
        // 获得密钥库
        KeyStore keyStore = getKeyStore(password, keyStorePath);
        // 初始化密钥工厂
        keyManagerFactory.init(keyStore, password.toCharArray());

        // 实例化信任库
        TrustManagerFactory trustManagerFactory = TrustManagerFactory
                .getInstance(TrustManagerFactory.getDefaultAlgorithm());
        // 获得信任库
        KeyStore trustStore = getKeyStore(password, trustStorePath);
        // 初始化信任库
        trustManagerFactory.init(trustStore);
        // 实例化SSL上下文
        SSLContext ctx = SSLContext.getInstance("TLS");
        // 初始化SSL上下文
        ctx.init(keyManagerFactory.getKeyManagers(),
                trustManagerFactory.getTrustManagers(), null);
        // 获得SSLSocketFactory
        return ctx;
    }

    /*
     * 初始化HttpsURLConnection.
     *
     * @param password       密码
     * @param keyStorePath   密钥库路径
     * @param trustStorePath 信任库路径
     * @throws Exception
     */
    public static void initHttpsURLConnection(String password,
                                              String keyStorePath, String trustStorePath) throws Exception {
        // 声明SSL上下文
        SSLContext sslContext = null;
        // 实例化主机名验证接口
        HostnameVerifier hnv = new MyHostnameVerifier();
        try {
            sslContext = getSSLContext(password, keyStorePath, trustStorePath);
        } catch (GeneralSecurityException e) {
            e.printStackTrace();
        }
        if (sslContext != null) {
            HttpsURLConnection.setDefaultSSLSocketFactory(sslContext
                    .getSocketFactory());
        }
        HttpsURLConnection.setDefaultHostnameVerifier(hnv);
    }

    /**
     * 发送请求.
     *
     * @param httpsUrl 请求的地址
     * @param xmlStr   请求的数据
     */
    public static int post(String httpsUrl, String xmlStr,String serialno,String version,String systemtype) {
        //HttpsURLConnection urlCon = null;
        HttpURLConnection urlCon = null;
        try {
            //urlCon = (HttpsURLConnection) (new URL(httpsUrl)).openConnection();
            urlCon = (HttpURLConnection) (new URL(httpsUrl)).openConnection();
            urlCon.setDoInput(true);
            urlCon.setDoOutput(true);
            urlCon.setRequestMethod("POST");
            urlCon.setRequestProperty("Content-Length",
                    String.valueOf(xmlStr.getBytes().length));
            urlCon.setRequestProperty("serialno",serialno);
            urlCon.setRequestProperty("version",version);
            urlCon.setUseCaches(false);
            //设置为gbk可以解决服务器接收时读取的数据中文乱码问题
            urlCon.getOutputStream().write(xmlStr.getBytes("gbk"));
            urlCon.getOutputStream().flush();
            urlCon.getOutputStream().close();

            //System.out.println("-----------1111----------" + urlCon.getResponseCode());
            /*BufferedReader in = new BufferedReader(new InputStreamReader(
                    urlCon.getInputStream()));
            System.out.println("-----------2222----------"+ urlCon.getResponseCode());
            String line;
            while ((line = in.readLine()) != null) {
                System.out.println(line);
            }*/
            return urlCon.getResponseCode();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    /**
     * 发送请求.
     *
     * @param httpsUrl 请求的地址
     */
    public static int post1(String httpsUrl) {
        //HttpsURLConnection urlCon = null;
        HttpURLConnection urlCon = null;
        try {
            //urlCon = (HttpsURLConnection) (new URL(httpsUrl)).openConnection();
            urlCon = (HttpURLConnection) (new URL(httpsUrl)).openConnection();
            //urlCon.setDoInput(true);
            //urlCon.setDoOutput(true);
            urlCon.setRequestMethod("POST");
            //urlCon.setRequestProperty("Content-Length",
            //        String.valueOf(xmlStr.getBytes().length));
            urlCon.setRequestProperty("serialno","0013320b00e3.001");
            urlCon.setRequestProperty("version","3.3.020.043.1_D8049_1");
            urlCon.setUseCaches(false);
            //设置为gbk可以解决服务器接收时读取的数据中文乱码问题
            //urlCon.getOutputStream().write(xmlStr.getBytes("gbk"));
            //urlCon.getOutputStream().flush();
            //urlCon.getOutputStream().close();

            System.out.println("-----------1111----------" + urlCon.getResponseCode());
            /*BufferedReader in = new BufferedReader(new InputStreamReader(
                    urlCon.getInputStream()));
            System.out.println("-----------2222----------"+ urlCon.getResponseCode());
            String line;
            while ((line = in.readLine()) != null) {
                System.out.println(line);
            }*/
            return urlCon.getResponseCode();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
    /**
     * 发送请求.
     *
     * @param httpsUrl 请求的地址
     */
    public static int post2(String httpsUrl) {
        //HttpsURLConnection urlCon = null;
        HttpURLConnection urlCon = null;
        try {
            //urlCon = (HttpsURLConnection) (new URL(httpsUrl)).openConnection();
            urlCon = (HttpURLConnection) (new URL(httpsUrl)).openConnection();
            //urlCon.setDoInput(true);
            //urlCon.setDoOutput(true);
            urlCon.setRequestMethod("POST");
            //urlCon.setRequestProperty("Content-Length",
            //        String.valueOf(xmlStr.getBytes().length));
            urlCon.setRequestProperty("serialno","0013320b00e3.001");
            urlCon.setRequestProperty("version","3.3.020.043.1_D8049_1");
            urlCon.setRequestProperty("executed","EXECUTED");
            urlCon.setUseCaches(false);
            //设置为gbk可以解决服务器接收时读取的数据中文乱码问题
            //urlCon.getOutputStream().write(xmlStr.getBytes("gbk"));
            //urlCon.getOutputStream().flush();
            //urlCon.getOutputStream().close();

            System.out.println("-----------1111----------" + urlCon.getResponseCode());
            /*BufferedReader in = new BufferedReader(new InputStreamReader(
                    urlCon.getInputStream()));
            System.out.println("-----------2222----------"+ urlCon.getResponseCode());
            String line;
            while ((line = in.readLine()) != null) {
                System.out.println(line);
            }*/
            return urlCon.getResponseCode();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    /**
     * 发送请求.
     *
     * @param httpsUrl 请求的地址
     * @param xmlStr   请求的数据
     */
    public static int get(String httpsUrl, String xmlStr) {
        //HttpsURLConnection urlCon = null;
        HttpURLConnection urlCon = null;
        try {
            //urlCon = (HttpsURLConnection) (new URL(httpsUrl)).openConnection();
            urlCon = (HttpURLConnection) (new URL(httpsUrl)).openConnection();
            //urlCon.setDoInput(true);
            //urlCon.setDoOutput(true);
            urlCon.setRequestMethod("GET");
            //urlCon.setRequestProperty("Content-Length",
            //        String.valueOf(xmlStr.getBytes().length));
            urlCon.setRequestProperty("serialno", "3.3.020.043.1_D8049_11111111111");
            urlCon.setRequestProperty("version", "3.3.020.043.1_D8049_1");
            //urlCon.setUseCaches(false);
            //设置为gbk可以解决服务器接收时读取的数据中文乱码问题
            //urlCon.getOutputStream().write(xmlStr.getBytes("gb2312"));
            //urlCon.getOutputStream().flush();
            //urlCon.getOutputStream().close();
            BufferedReader in = new BufferedReader(new InputStreamReader(
                    urlCon.getInputStream(),"gb2312"));
            System.out.println("---------------------" + urlCon.getResponseCode());
            String line;
            while ((line = in.readLine()) != null) {
                System.out.println(line);
            }
            return urlCon.getResponseCode();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
    /**
     * 发送请求.
     *
     * @param httpsUrl 请求的地址
     */
    public static int get(String httpsUrl) {
        //HttpsURLConnection urlCon = null;
        HttpURLConnection urlCon = null;
        try {
            //urlCon = (HttpsURLConnection) (new URL(httpsUrl)).openConnection();
            urlCon = (HttpURLConnection) (new URL(httpsUrl)).openConnection();
            //urlCon.setDoInput(true);
            //urlCon.setDoOutput(true);
            urlCon.setRequestMethod("GET");
            //urlCon.setRequestProperty("Content-Length",
            //        String.valueOf(xmlStr.getBytes().length));
            urlCon.setRequestProperty("serialno", "0013320b00e3.001");
            urlCon.setRequestProperty("version", "3.3.020.043.1_D8049_1");
            //urlCon.setUseCaches(false);
            //设置为gbk可以解决服务器接收时读取的数据中文乱码问题
            //urlCon.getOutputStream().write(xmlStr.getBytes("gb2312"));
            //urlCon.getOutputStream().flush();
            //urlCon.getOutputStream().close();
            BufferedReader in = new BufferedReader(new InputStreamReader(
                    urlCon.getInputStream(),"gb2312"));
            System.out.println("---------------------" + urlCon.getResponseCode());
            String line;
            while ((line = in.readLine()) != null) {
                System.out.println(line);
            }
            return urlCon.getResponseCode();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    /**
     * 测试方法.
     *
     * @param args
     * @throws Exception
     */
    public static void main(String[] args) throws Exception {
        String password = "123456";
        // 密钥库
        String keyStorePath = "E:/work2topsec/185key/server.ks";
        // 信任库
        String trustStorePath = "E:/work2topsec/185key/server.ks";
        // 密钥库
        //String keyStorePath = "D:/xampp/tomcat/key/server.ks";
        // 信任库
        //String trustStorePath = "D:/xampp/tomcat/key/server.ks";


        // 本地起的https服务
        //String httpsUrl = "http://localhost:8080/dmpservice-netty";
        //String httpsUrl = "https://localhost:8443/dmpservice-netty";
        String httpsUrl = "http://192.168.72.185:8091/nettyDemo-netty/";
        //String httpsUrl = "https://192.168.72.185:8443/dmpservice-web/receiveDevice/";
        //String httpsUrl = "http://localhost:8090/dmpservice-netty/";
        // 传输文本

        //HttpsPost.initHttpsURLConnection(password, keyStorePath, trustStorePath);
        for (int j = 0; j < 10; j++) {
            for (int i = 0; i < serialnos.length; i++) {
                //httpsUrl = "http://localhost:8080/dmpservice-web/receiveDeviceInfoTask";
                // 发起请求 执行三次 测试设备上报
                long currentTime = System.currentTimeMillis();
                int code = HttpsPostNetty.post(httpsUrl, AssembleXML(serialnos[i], i + ""), serialnos[i], "3.3.020" +
                        ".043" +
                        ".1_D8049_" + i, "0");
                System.out.println("-netty---第" + j + "次循环的第" + i + "次上报--" + serialnos[i] + "-----用时：" + (System
                        .currentTimeMillis() -
                        currentTime));
                //if(i == 2) break;
            }
        }

        /*long currentTime = System.currentTimeMillis();
        int code = HttpsPost.post(httpsUrl, AssembleXML("Q1507332113、Q1507332114", "1"), "Q1507332113、Q1507332114", "3.3.020.043.1_D8049_1" );
        System.out.println("--一次上报------------用时：" + (System.currentTimeMillis() -currentTime));*/



    }


    public static String AssembleXML(String serialno, String version){
        String xmlStr = "<?xml version=\"1.0\" encoding=\"GB2312\" ?>\n" +
                "<devdig>\n" +
                "    <!--设备基本信息-->\n" +
                "    <systeminfo>\n" +
                "        <!--产品序列号-->\n" +
                "        <serialno>" + serialno + "</serialno>\n" +
                "        <!-- 设备版本号-->\n" +
                "        <version>3.3.020.043.1_D8049_" + version + "</version>\n" +
                "        <!--eth0的mac地址-->\n" +
                "        <eth0macaddr>0013320b00e3</eth0macaddr>\n" +
                "        <!-- 设备型号 -->\n" +
                "        <product>TopVpn6000(TV-41604-VONE)</product>\n" +
                "\n" +
                "        <!--设备性能信息-cpu状态-->\n" +
                "        <cpuload>20</cpuload>\n" +
                "        <!--设备性能信息-内存使用状态-->\n" +
                "        <memload>40</memload>\n" +
                "        <!--设备性能信息-流量统计-->\n" +
                "        <flow>2045</flow>\n" +
                "        <!--设备性能信息-并发连接数-->\n" +
                "        <currentconnect>200</currentconnect>\n" +
                "        <!--设备性能信息-每秒新建数-->\n" +
                "        <cps>30</cps>\n" +
                "        <!--设备性能信息-运行时长-->\n" +
                "        <uptime>35</uptime>\n" +
                "    </systeminfo>\n" +
                "    <ha>\n" +
                "        <!--ha运行状态，可能的取值有：notrun；master；backup-->\n" +
                "        <status>notrun</status>\n" +
                "        <!--ha的工作模式，可能的取值有：aa；as；sp-->\n" +
                "        <mode>aa</mode>\n" +
                "    </ha>\n" +
                "    <user>\n" +
                "        <!--用户名称-->\n" +
                "        <name>username</name>\n" +
                "        <!--管理员手机号-->\n" +
                "        <phonenumber>1380010001</phonenumber>\n" +
                "        <!--管理员邮箱地址-->\n" +
                "        <email>admin@client.com.cn</email>\n" +
                "    </user>\n" +
                "</devdig>";
        return xmlStr;
    }
    public String AssembleReturnXML(String serialno,String version){
        String xmlStr = "<?xml version=\"1.0\" encoding=\"GB2312\" ?>\n" +
                "<devdig>\n" +
                "    <!--设备基本信息-->\n" +
                "    <systeminfo>\n" +
                "        <!--产品序列号-->\n" +
                "        <serialno>" + serialno + "</serialno>\n" +
                "        <!-- 设备版本号-->\n" +
                "        <version>3.3.020.043.1_D8049_" + version + "</version>\n" +
                "        <!--eth0的mac地址-->\n" +
                "        <eth0macaddr>0013320b00e3</eth0macaddr>\n" +
                "        <!-- 设备型号 -->\n" +
                "        <product>TopVpn6000(TV-41604-VONE)</product>\n" +
                "\n" +
                "        <!--设备性能信息-cpu状态-->\n" +
                "        <cpuload>20</cpuload>\n" +
                "        <!--设备性能信息-内存使用状态-->\n" +
                "        <memload>40</memload>\n" +
                "        <!--设备性能信息-流量统计-->\n" +
                "        <flow>2045</flow>\n" +
                "        <!--设备性能信息-并发连接数-->\n" +
                "        <currentconnect>200</currentconnect>\n" +
                "        <!--设备性能信息-每秒新建数-->\n" +
                "        <cps>30</cps>\n" +
                "        <!--设备性能信息-运行时长-->\n" +
                "        <uptime>35</uptime>\n" +
                "    </systeminfo>\n" +
                "    <ha>\n" +
                "        <!--ha运行状态，可能的取值有：notrun；master；backup-->\n" +
                "        <status>notrun</status>\n" +
                "        <!--ha的工作模式，可能的取值有：aa；as；sp-->\n" +
                "        <mode>aa</mode>\n" +
                "    </ha>\n" +
                "    <user>\n" +
                "        <!--用户名称-->\n" +
                "        <name>username</name>\n" +
                "        <!--管理员手机号-->\n" +
                "        <phonenumber>1380010001</phonenumber>\n" +
                "        <!--管理员邮箱地址-->\n" +
                "        <email>admin@client.com.cn</email>\n" +
                "    </user>\n" +
                "    <!-- 任务执行是否成功 -->\n" +
                "    <taskitem>\n" +
                "        <!--任务执行是否成功0为成功，1为失败-->\n" +
                "        <taskstatus>0</taskstatus>\n" +
                "    </taskitem>\n" +
                "</devdig>";
        return xmlStr;
    }
}