package com.troylc.nettyDemo.utils;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.sql.Timestamp;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2015/12/3.
 */
public class ListUtils {


    /**
     * 比较两个集合中的元素是否相等
     * @param a 集合A
     * @param b 集合B
     * @param sortMode 排序方式：ASC，DESC 任选其一
     * @param <T> 泛型实体 需要实现 Comparable接口
     * @return
     */
    public static <T extends Comparable<T>> boolean compare(List<T> a, List<T> b,String sortMode) {
        if (a.size() != b.size())
            return false;
        sortList(a, sortMode);
        sortList(b, sortMode);
        for (int i = 0; i < a.size(); i++) {
            if (!a.get(i).equals(b.get(i)))
                return false;
        }
        return true;
    }

    /**
     * 比较两个集合中的元素是否相等
     * @param a 集合A
     * @param b 集合B
     * @param sortField T泛型实体排序的排序字段
     * @param sortMode 排序方式：ASC，DESC 任选其一
     * @param <T> 泛型实体 需要实现 Comparable接口
     * @return
     */
    public static <T extends Comparable<T>> boolean compare(List<T> a, List<T> b,
                                                            final String sortField, final String sortMode) {
        if (a.size() != b.size())
            return false;
        sortListBysortField(a, sortField, sortMode);
        sortListBysortField(b, sortField, sortMode);
        for (int i = 0; i < a.size(); i++) {
            if (!a.get(i).equals(b.get(i)))
                return false;
        }
        return true;
    }


    /**
     * 对List对象按照某个成员变量进行排序
     * @param list      List对象
     * @param sortField 排序的属性名称
     * @param sortMode  排序方式：ASC，DESC 任选其一
     */
    public static <T> void sortListBysortField(List<T> list, final String sortField, final String sortMode) {
        Collections.sort(list, new Comparator<T>() {
            @Override
            public int compare(T o1, T o2) {
                try {
                    Class clazz = o1.getClass();
                    Field field = clazz.getDeclaredField(sortField); //获取成员变量
                    field.setAccessible(true); //设置成可访问状态
                    String typeName = field.getType().getName().toLowerCase(); //转换成小写

                    Object v1 = field.get(o1); //获取field的值
                    Object v2 = field.get(o2); //获取field的值

                    boolean ASC_order = (sortMode == null || "ASC".equalsIgnoreCase(sortMode));

                    //判断字段数据类型，并比较大小
                    if (typeName.endsWith("string")) {
                        String value1 = v1.toString();
                        String value2 = v2.toString();
                        return ASC_order ? value1.compareTo(value2) : value2.compareTo(value1);
                    } else if (typeName.endsWith("short")) {
                        Short value1 = Short.parseShort(v1.toString());
                        Short value2 = Short.parseShort(v2.toString());
                        return ASC_order ? value1.compareTo(value2) : value2.compareTo(value1);
                    } else if (typeName.endsWith("byte")) {
                        Byte value1 = Byte.parseByte(v1.toString());
                        Byte value2 = Byte.parseByte(v2.toString());
                        return ASC_order ? value1.compareTo(value2) : value2.compareTo(value1);
                    } else if (typeName.endsWith("char")) {
                        Integer value1 = (int) (v1.toString().charAt(0));
                        Integer value2 = (int) (v2.toString().charAt(0));
                        return ASC_order ? value1.compareTo(value2) : value2.compareTo(value1);
                    } else if (typeName.endsWith("int") || typeName.endsWith("integer")) {
                        Integer value1 = Integer.parseInt(v1.toString());
                        Integer value2 = Integer.parseInt(v2.toString());
                        return ASC_order ? value1.compareTo(value2) : value2.compareTo(value1);
                    } else if (typeName.endsWith("long")) {
                        Long value1 = Long.parseLong(v1.toString());
                        Long value2 = Long.parseLong(v2.toString());
                        return ASC_order ? value1.compareTo(value2) : value2.compareTo(value1);
                    } else if (typeName.endsWith("float")) {
                        Float value1 = Float.parseFloat(v1.toString());
                        Float value2 = Float.parseFloat(v2.toString());
                        return ASC_order ? value1.compareTo(value2) : value2.compareTo(value1);
                    } else if (typeName.endsWith("double")) {
                        Double value1 = Double.parseDouble(v1.toString());
                        Double value2 = Double.parseDouble(v2.toString());
                        return ASC_order ? value1.compareTo(value2) : value2.compareTo(value1);
                    } else if (typeName.endsWith("boolean")) {
                        Boolean value1 = Boolean.parseBoolean(v1.toString());
                        Boolean value2 = Boolean.parseBoolean(v2.toString());
                        return ASC_order ? value1.compareTo(value2) : value2.compareTo(value1);
                    } else if (typeName.endsWith("date")) {
                        Date value1 = (Date) (v1);
                        Date value2 = (Date) (v2);
                        return ASC_order ? value1.compareTo(value2) : value2.compareTo(value1);
                    } else if (typeName.endsWith("timestamp")) {
                        Timestamp value1 = (Timestamp) (v1);
                        Timestamp value2 = (Timestamp) (v2);
                        return ASC_order ? value1.compareTo(value2) : value2.compareTo(value1);
                    } else {
                        //调用对象的compareTo()方法比较大小
                        Method method = field.getType().getDeclaredMethod("compareTo", new Class[]{field.getType()});
                        method.setAccessible(true); //设置可访问权限
                        int result = (Integer) method.invoke(v1, new Object[]{v2});
                        return ASC_order ? result : result * (-1);
                    }
                } catch (Exception e) {
                    String err = e.getLocalizedMessage();
                    System.out.println(err);
                    e.printStackTrace();
                }

                return 0; //未知类型，无法比较大小
            }
        });
    }

    /**
     * 调用此方法必须让T这个泛型实体对象实现 implements Comparable<T>的接口 在此项目中T指DmpComponentVersion
     * 对List对象按照某个成员变量进行排序
     * @param list      List对象
     * @param sortMode  排序方式：ASC，DESC 任选其一
     */
    public static <T> void sortList(List<T> list, final String sortMode) {
        Collections.sort(list, new Comparator<T>() {
            @Override
            public int compare(T o1, T o2) {
                try {
                    Class clazz = o1.getClass();
                    boolean ASC_order = (sortMode == null || "ASC".equalsIgnoreCase(sortMode));
                    //调用对象的compareTo()方法比较大小
                    Method method = clazz.getDeclaredMethod("compareTo", o2.getClass());
                    method.setAccessible(true); //设置可访问权限
                    int result = (Integer) method.invoke(o1, o2);
                    return ASC_order ? result : result * (-1);
                } catch (Exception e) {
                    String err = e.getLocalizedMessage();
                    System.out.println(err);
                    e.printStackTrace();
                }

                return 0; //未知类型，无法比较大小
            }
        });
    }
}
