package com.troylc.rpc.invoke;

/**
 * 生产者配置
 */
public class ProviderConfig
{
    /**
     * 生产者服务器地址
     */
    private String target;
    /**
     * 生产者端口
     */
    private Integer port;

    public ProviderConfig() {
    }

    public ProviderConfig(String target, Integer port) {
        this.target = target;
        this.port = port;
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public Integer getPort() {
        return port;
    }

    public void setPort(Integer port) {
        this.port = port;
    }
}
