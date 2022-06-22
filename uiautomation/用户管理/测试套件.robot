*** Settings ***
Library           Selenium2Library

*** Test Cases ***
id定位实战
    Open Browser    https://baidu.com    chrome
    Set Browser Implicit Wait    5
    Sleep    3
    Set Window Size    1150    700
    sleep    2
    Maximize Browser Window
    Sleep    3
    Go Back
    sleep    2
    Go To    https://baidu.com

浏览器关键字
    Open Browser    https://www.baidu.com    chrome
    Set Browser Implicit Wait    5
    Comment    Sleep    3
    Comment    设置窗口大小
    Comment    Set Window Size    1150    700
    Comment    sleep    2
    Comment    设置窗口最大化
    Comment    Maximize Browser Window
    Comment    Sleep    3
    Comment    返回上一页
    Comment    Go Back
    Comment    sleep    2
    Comment    跳转到一个页面
    Comment    Go To    https://baidu.com
    Comment    sleep    3
    Comment    刷新页面
    Comment    Reload Page
    Comment    输入文本
    Comment    Input Text    id =kw    X8沙箱
    Comment    sleep    3
    Comment    单击元素
    Click Element     link=hao123
    Comment    Input Text    id =kw    X8沙箱
    Comment    sleep    3
    Comment    清除元素文本
    Comment    Clear Element Text    id=kw
    Comment    获得链接的文本
    Comment    ${text}    Get Text    link=hao123
    Comment    获得元素的属性
    ${attribute}    Get Element Attribute    id=kw    autocomplete
    Comment    获得页面路径
    ${location}    Get Location
    Comment    断言方法之一后面会讲，确定页面有这个文本
    Page Should Contain    百度一下
    sleep    2
    Comment    关闭浏览器
    Close Browser
