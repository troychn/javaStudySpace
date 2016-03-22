package com.troylc.rpc.container;

import com.troylc.rpc.container.Container;
import com.troylc.rpc.invoke.ProviderConfig;
import org.mortbay.jetty.Connector;
import org.mortbay.jetty.Server;
import org.mortbay.jetty.handler.AbstractHandler;
import org.mortbay.jetty.nio.SelectChannelConnector;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 使用jetty轻量级的容器
 */
public class HttpContainer extends Container
{
    private static final Logger logger = LoggerFactory.getLogger(HttpContainer.class);

    private AbstractHandler httpHandler;
    private ProviderConfig providerConfig;

    public HttpContainer(AbstractHandler httpHandler)
    {
        this(httpHandler, new ProviderConfig("/invoke",8080));
    }

    public HttpContainer(AbstractHandler httpHandler,ProviderConfig providerConfig)
    {
        this.httpHandler = httpHandler;
        this.providerConfig = providerConfig;
        Container.container = this;
    }

    public void start()
    {
        Server server = new Server();
        try
        {
            SelectChannelConnector connector = new SelectChannelConnector();
            connector.setPort(providerConfig.getPort());
            server.setConnectors(new Connector[]{connector});
            server.setHandler(httpHandler);
            server.start();
        }
        catch (Throwable e)
        {
            logger.error("容器异常", e);
        }
    }

}
