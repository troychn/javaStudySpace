package com.troylc.nettyDemo.utils;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

/**
 * Created by cao on 2015/8/25.
 */
public class MyHostnameVerifier implements HostnameVerifier {
    @Override
    public boolean verify(String hostname, SSLSession sslSession) {
        if ("localhost".equals(hostname)) {
            return true;
        } else if("192.168.72.185".equals(hostname)){
            return true;
        }
        else {
            return false;
        }
    }
}
