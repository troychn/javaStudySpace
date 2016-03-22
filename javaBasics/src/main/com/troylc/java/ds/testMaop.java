package com.troylc.java.ds;

/**
 * Created by Administrator on 2015/7/16.
 */

public class testMaop {
    public static void main(String[] args) {
        int a[] = {12, 23, 435, 6, 2, 4, -543, 226, 595};
        int i, j, n, temp;
        // 数组的长度
        n = a.length;
        for (j = 0; j < n; j++) {
            for (i = 0; i < n - j; i++) {
                try {
                    // 把最大的交换到最后面去
                    if (a[i] < a[i + 1]) {
                        temp = a[i];
                        a[i] = a[i + 1];
                        a[i + 1] = temp;
                    }
                } catch (Exception e) {
                    // TODO: handle exception
                }
            }
        }
        for (i = 0; i < n; i++) {
            System.out.print(a[i] + " ");
        }
    }
}