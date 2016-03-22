package com.troylc.nettyDemo.nettyserver.handler;

import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManagerFactory;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStore;
import java.util.Properties;

public final class SslContextFactory
{
	private static final String		PROTOCOL	= "TLS";
	private static final SSLContext	SERVER_CONTEXT;
	private static final SSLContext	CLIENT_CONTEXT;

	static
	{

		Properties prop = new Properties();
		InputStream in = SslContextFactory.class.getClassLoader().getResourceAsStream("config/config.properties");
		try {
			prop.load(in);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				in.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		SSLContext serverContext = null;
		SSLContext clientContext = null;

		// get keystore and trustore locations and passwords
		String keyStoreSPassword = prop.getProperty("netty.server.keyStoreSPassword")==null ? "1234567":
				prop.getProperty("netty.server.keyStoreSPassword");
		String keyStoreCPassword = "654321";
		try
		{
			String keyStorePath = prop.getProperty("netty.server.keyStorePath") == null ? "cert\\server1.ks" :
					prop.getProperty("netty.server.keyStorePath");
			KeyStore ks = KeyStore.getInstance("JKS");
			ks.load(SslContextFactory.class.getClassLoader().getResourceAsStream(keyStorePath),
					keyStoreSPassword.toCharArray());

			// Set up key manager factory to use our key store
			KeyManagerFactory kmf = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
			kmf.init(ks, keyStoreSPassword.toCharArray());

			// truststore
			KeyStore ts = KeyStore.getInstance("JKS");
			ts.load(SslContextFactory.class.getClassLoader().getResourceAsStream(keyStorePath),
					keyStoreSPassword.toCharArray());

			// set up trust manager factory to use our trust store
			TrustManagerFactory tmf = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
			tmf.init(ts);

			// Initialize the SSLContext to work with our key managers.
			serverContext = SSLContext.getInstance(PROTOCOL);
			serverContext.init(kmf.getKeyManagers(), tmf.getTrustManagers(), null);

		} catch (Exception e)
		{
			throw new Error("Failed to initialize the server-side SSLContext", e);
		}

		/*try
		{
			// keystore
			KeyStore ks = KeyStore.getInstance("JKS");
			ks.load(SslContextFactory.class.getClassLoader().getResourceAsStream("cert\\client.p12"),
					keyStoreCPassword.toCharArray());

			// Set up key manager factory to use our key store
			KeyManagerFactory kmf = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
			kmf.init(ks, keyStoreCPassword.toCharArray());

			// truststore
			KeyStore ts = KeyStore.getInstance("JKS");
			ts.load(SslContextFactory.class.getClassLoader().getResourceAsStream("cert\\client.p12"),
					keyStoreCPassword.toCharArray());

			// set up trust manager factory to use our trust store
			TrustManagerFactory tmf = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
			tmf.init(ts);
			clientContext = SSLContext.getInstance(PROTOCOL);
			clientContext.init(kmf.getKeyManagers(), tmf.getTrustManagers(), null);
		} catch (Exception e)
		{
			throw new Error("Failed to initialize the client-side SSLContext", e);
		}*/

		SERVER_CONTEXT = serverContext;
		CLIENT_CONTEXT = clientContext;
	}

	public static SSLContext getServerContext()
	{
		return SERVER_CONTEXT;
	}

	public static SSLContext getClientContext()
	{
		return CLIENT_CONTEXT;
	}

	private SslContextFactory()
	{
		// Unused
	}
}
