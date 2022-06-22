*** Settings ***
Resource          业务关键字.txt
Library           Collections

*** Test Cases ***
测试用例
    log    RF复习
    Comment    Log    声培
    ${a}    Set Variable    100
    Log    ${a}
    Comment    Sleep    3
    ${time}    Get Time
    Log    ${time}
    ${boss}    Catenate    SEPARATOR=#    RF学习    声培
    Log    ${boss}，通过SEPARATOR=#,连接到一起，没有会显示空格

常用关键字
    Log    常用关键字
    Comment    log    陈声培
    Comment    赋值关键字
    ${a}    Set Variable    100
    log    ${a}
    Comment    Sleep    2
    ${times}    Get Time
    log    ${times}
    log    SEPARATOR=#是用于把两个字符之间的空格去掉
    ${sdtuy}    Catenate    SEPARATOR=#    声培    重温RF
    log    ${sdtuy}

复杂关键字
    Comment    列表的两种形式
    Comment    普通列表
    ${list}    Create List    声培    不断    学习
    log    ${list}
    Comment    @list，多用于for循环时使用
    @{list}    Create List    声培    不断    学习
    log Many    @{list}
    Comment    字典
    ${dic}    Create Dictionary    name = 声培    age=99
    log    ${dic}
    Comment    需要导入Collections库
    ${keys}    Get Dictionary Keys    ${dic}
    log    ${keys}
    ${value}    Get Dictionary Values    ${dic}    age
    Log    ${value}
    ${vuale_to_name}    Get From Dictionary    ${dic}    age
    Log    ${vuale_to_name}
    Comment    可直接执行Python方法
    ${random_number}    Evaluate    random.randint(1,100)    modules=random
    log    ${random_number}
    Comment    可直接执行自定义的Python方法
    ${a}    Evaluate    int(10)
    ${b}    Evaluate    int(20)
    Import Library    E:/test.py
    ${sum}    sum    ${a}    ${b}
    log    ${sum}

流程控制关键字
    Comment    if-else结构
    ${grade}    Set Variable    29
    Run Keyword If    ${grade}>=80    log    成绩优秀
    ...    ELSE IF    ${grade}>=60    Log    成绩及格
    Comment    利用业务关键字做一个嵌套循环
    ...    ELSE    ifs    ${grade}
    Comment    循环结构
    FOR    ${a}    IN    声哥    女娲    沈梦溪
    log    ${a}
    END
    @{list}    Create List    声哥    女娲    沈梦溪
    FOR    ${a}    IN    @{list}
    log    ${a}
    END
    FOR    ${a}    IN RANGE    1    11
    Run Keyword If    ${a}==8    Exit For Loop
    log    ${a}
    END
