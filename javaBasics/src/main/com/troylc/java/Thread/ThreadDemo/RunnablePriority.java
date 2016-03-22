package com.troylc.java.Thread.ThreadDemo;

/**
 * 保存优先级
 *
 * @author notreami
 */
class RunnablePriorityBase {
    protected int priority;

    public RunnablePriorityBase(int priority) {
        this.priority = priority;
    }
}

/**
 * 优先级比较
 *
 * @author notreami
 */

public class RunnablePriority extends RunnablePriorityBase implements Runnable, Comparable<RunnablePriorityBase> {

    public RunnablePriority(int priority) {
        super(priority);
    }

    @Override
    public int compareTo(RunnablePriorityBase o) {
        // 复写此方法进行任务执行优先级排序
        // return priority < o.priority ? -1 : (priority > o.priority ? 1 : 0);
        // System.out.println(priority +"::"+ o.priority);
        if (priority < o.priority) {
            return -1;
        } else {
            if (priority > o.priority) {
                return 1;
            } else {
                return 1;
            }
        }
    }

    @Override
    public void run() {
        // 执行任务代码..
    }

}