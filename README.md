##此空间为java学习目录,所有说明采用markdown语法。
 *  javaspace  
     1. **JavaBasics：[java基础学习](./JavaBasics)**
     2. **rpc: [java远程过程调用](./rpc)**
     3. **rpc-zookeeper: 利用分布式协调组件[zookeeper做RPC的服务注册与发现](./rpc-zookeeper)。**
     4. **zookeeper: [分布式协调组件zookeeper学习](./zookeeper)。**
  
  
 
 
 
### markdown语法学习：

1. 一开始，先记住 `# 这是标题`、`## 这是二级标题`、`### 这是三级标题`这时候你写一般小文章会开始感觉 MD 不错。
2. 然后，你发现标题不适合做列表，记住了用`1. 第一点`、`- 这一点`来列表超级方便。
3. 好吧，写知乎答案总要有些重点吧，`**加粗**`、`*斜体*`、`~~删除线~~`开始派上用场了。这时你基本不会打开 Word 那样的笨重软件了。
4. 如果你不幸是码农：   `\`这是单行代码\``//这是代码段，四个空格或一个制表符缩进        int i;    > 这是引用
5. 你越来越喜欢，自然会去查查维基（Markdown）还有什么语法，加上多用，很快就基本掌握了。MD 还有表格、锚、注脚、贴图等。强烈推荐 Mou，按 ⌘＋R 可以快速查看语法。
6. 慢慢，你会发现，总有小「bugs」，如列表内无法内嵌代码段。上网查查，你开始理解 MD 的缩进内嵌机制等高级隐形内容，这样你就 Master 了！

#### Markdown语法它不是编程语言，很简单，一学就会，一用就灵。

常用的几个语法：

1. **大标题小标题**：几个#号几级标题。如一个井号是一级标题，四个井号是四级标题。
2. **加粗和斜体**：几对*号斜粗体。一对星号是斜体，两对星号是加粗。
3. **引用别人的话**：一个>号变引用。即可呈现出灰色底色引用的效果。
4. **引用链接**：方括号里超链接。[需要引用的话][标识码]然后把标识码对应的链接附在文后：[标识码]：http://... 或者[需要引用的话]后面紧跟括号，括号里是对应的链接。
5. **插入表格**：|号表示分割线。表格从此想怎么画怎么画。
6. **缩进黑点对齐**：一个*号点缩进。呈现黑点引导的对齐效果。
7. **缩进数字对齐**：数字圆点数缩进。呈现数字引导的对齐效果。
8. **插入高亮代码**：三个`号插代码。插入一段高亮代码。
9. **插入分隔线**：三个*号分隔线。分隔线就是这么简单。
10. 邮箱的表示方式<troylc@163.com>。
11. 听说`**`可以做列表，`-`这个也可以。

 |为知笔记|更新|版本| 
 |------------|-----------|--------| 
 | WizNote   | Markdown| Latest |
 
 
 * 列表 
     1. 如一个井号是一级标题，四个井号是四级标题。
     2. 一对星号是斜体，两对星号是加粗。
     3. 可呈现出灰色底色引用的效果。
12. 代码展示-在代码前后增加 三个反单引号：```  
    
    ```  
    int i = 0; i = 1; for (int i = 0; i < 100; i++)  
    {  
        printf("hello markdown!\n");  
    }  
    ```
