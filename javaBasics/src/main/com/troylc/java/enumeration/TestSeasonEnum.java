package com.troylc.java.enumeration;

/**
 * Created by Administrator on 2015/3/5.
 */
public class TestSeasonEnum {
    public static void main(String[] args) {
        SeasonEnum summer = SeasonEnum.SUMMER;
        System.out.println(summer);
        summer.show();
        System.out.println(summer.getSeasonName());
        System.out.println();
        //1.values();
        SeasonEnum[] seasons = SeasonEnum.values();
        for (int i = 0; i < seasons.length; i++) {
            System.out.println(seasons[i]);
        }
        //2.valuesof() 要求传入的形参name是枚举对象的名称，否则报IllegalArgumentException.
        String name = "SPRING";
        SeasonEnum seasonEnum = SeasonEnum.valueOf(name);
        System.out.println(seasonEnum);
        seasonEnum.show();
    }
}

interface Info{
    void  show();
}

//enum枚举类
enum SeasonEnum implements Info{
    //SeasonEnum的四个对象
    SPRING("Spring", "春"){
        @Override
        public void show() {
            System.out.println(" 春天来了");
        }
    },
    SUMMER("summer", "夏") {
        @Override
        public void show() {
            System.out.println(" 夏天来了");
        }
    },
    AUTUMN("autumn", "秋") {
        @Override
        public void show() {
            System.out.println(" 秋天来了");
        }
    },
    WINTER("winter", "冬") {
        @Override
        public void show() {
            System.out.println(" 冬天来了");
        }
    };

    private final String seasonName;
    private final String seasonDesc;

    private SeasonEnum(String seasonName, String seasonDesc) {
        this.seasonDesc = seasonDesc;
        this.seasonName = seasonName;
    }

    public String getSeasonName() {
        return seasonName;
    }

    public String getSeasonDesc() {
        return seasonDesc;
    }

    @Override
    public String toString() {
        return "Season{" +
                "seasonName='" + seasonName + '\'' +
                ", seasonDesc='" + seasonDesc + '\'' +
                '}';
    }

   public void show() {
       System.out.println("这是一个季节！");
   }
}

