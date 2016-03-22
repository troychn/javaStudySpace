package com.troylc.nettyDemo.redis;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.CachingConfigurerSupport;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cache.interceptor.KeyGenerator;
import org.springframework.context.annotation.Bean;
import org.springframework.data.redis.cache.RedisCacheManager;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;

import java.lang.reflect.Method;

/**
 * 代码配置redis缓存
 * 主要是解决缓存Key生成策略被覆盖的问题
 * Created by lc on 2015/12/7.
 */
@Configurable
@EnableCaching
public class CacheConfig extends CachingConfigurerSupport {


    @Bean
    public JedisConnectionFactory redisConnectionFactory() {
        JedisConnectionFactory redisConnectionFactory = new JedisConnectionFactory();
        // Defaults
        redisConnectionFactory.setHostName("192.168.72.185");
        redisConnectionFactory.setPort(6379);
        return redisConnectionFactory;
    }


    @Bean
    public RedisTemplate<String, String> redisTemplate(RedisConnectionFactory cf) {
        RedisTemplate<String, String> redisTemplate = new RedisTemplate<String, String>();
        redisTemplate.setConnectionFactory(cf);
        return redisTemplate;
    }

    @Bean
    public CacheManager cacheManager(RedisTemplate redisTemplate) {
        RedisCacheManager cacheManager = new RedisCacheManager(redisTemplate);
        //配置CacheManager来设置过期时间
        //cacheManager.setDefaultExpiration(300);
        return cacheManager;
    }

    /**
     * 对于使用 @Cacheable 注解的方法，每个缓存的 key 生成策略默认使用的是参数名+参数值 比如以下方法：
     * @Cacheable("deviceInfo")
     * public DmpDeviceInfoEntity findBySerialNo(String serialNo)
     *
     * 这个方法的缓存将保存于 key 为 deviceInfo~keys 的缓存下，对于 serialNo 取值为 "V1.3.4" 的缓存，
     * key 为 "serialNo-V1.3.4"。一般情况下没啥问题，
     *
     * 二般情况如方法 key取值相等然后参数名也一样的时候就出问题了，如：
     * @Cacheable("dmpDeviceInfoEntity")
     * public Integer getCountBySerialNo(String serialNo)
     *
     * 这个方法的缓存也将保存于 key 为 deviceInfo~keys 的缓存下。对于 username 取值为 "V1.3.4" 的缓存，
     * key 也为 "serialNo-V1.3.4"，将另外一个方法的缓存覆盖掉。
     *
     * 解决办法是使用 自定义缓存策略，对于同一业务(同一业务逻辑处理的方法，哪怕是集群/分布式系统)，
     * 生成的 key 始终一致，对于不同业务则不一致
     * @return
     */
    @Bean
    public KeyGenerator customKeyGenerator() {
        return new KeyGenerator() {
            @Override
            public Object generate(Object o, Method method, Object... objects) {
                StringBuilder sb = new StringBuilder();
                sb.append(o.getClass().getName());
                sb.append(method.getName());
                for (Object obj : objects) {
                    sb.append(obj.toString());
                }
                return sb.toString();
            }
        };
    }
}
