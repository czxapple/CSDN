## 仿CSDN论坛项目
###
>> 示例:

    首页显示
![](https://github.com/czxapple/Resource/blob/master/CSDN-01.png)

    主题帖显示
![](https://github.com/czxapple/Resource/blob/master/CSDN-02.png)

    回复帖子显示
![](https://github.com/czxapple/Resource/blob/master/CSDN-03.png)

    登陆显示
![](https://github.com/czxapple/Resource/blob/master/CSDN-04.png)

    注册显示
![](https://github.com/czxapple/Resource/blob/master/CSDN-05.png)

    发表新帖显示
![](https://github.com/czxapple/Resource/blob/master/CSDN-06.png)

    创建新版块显示
![](https://github.com/czxapple/Resource/blob/master/CSDN-07.png)

    封号解封账号显示
![](https://github.com/czxapple/Resource/blob/master/CSDN-08.png)

    置顶精华帖和删除帖显示
![](https://github.com/czxapple/Resource/blob/master/CSDN-09.png)

>> 技术框架选择:

    我们拟使用以下的技术框架完成论坛应用程序的开发.

    为了解决中文乱码问题，我们在We层提供了一个字符编码转换过滤器。Web层使用Spring MVC 进行请求的处理和响应，视图层采用JSP2.0和JSTL技术.
    服务层采用Spring3.0，而持久层的Hibernate通过Spring提供的技术支持类继承到Spring中系统严格采用Web层、服务层和持久层三层体系结构，上一层的程序可以调用下一层的程序，反之则不行，达到层与层之间松耦合的目的.

    论坛系统技术框架图如下

![](https://github.com/czxapple/Resource/blob/master/CSDN-30.png)


>> 功能模块组成：

    （一） 会员注册 新会员注册，提供会员信息，检验会员信息的有效性，并将会员信息持久化。 

    （二） 会员登陆 提供用户凭证，验证用户信息，基于角色授权。

    （三） 会员管理 管理员由系统初始化分配一个，管理员可以对会员信息进行部分更改，整，版主调整，删除会员等。 

    （四） 论坛板块管理 管理员可以添加、删除、调整、置顶、隐藏论坛板块

    （五） 帖子管理 6 管理员可以对所有帖子进行转移、置顶、删除等操作版主可以转移本板块帖子，也可以对本板块帖子进行置顶、删除等操作。

    （六）  帖子发表 注册用户可以在感兴趣的板块中发表新主题帖。 

    （七） 帖子回复 用户可以对自己感兴趣的主题发表回复。

    （八） 帖子浏览 用户可以浏览所用可见帖子。 

    （九） 帖子检索 用户可以提供标题关键字检索所有可见主题帖，注册用户可以查看自己回复的帖子。



__Thanks__   ![][foryou]
[foryou]:https://github.com/czxapple/Resource/blob/master/foryou.gif
