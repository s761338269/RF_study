*** Settings ***
Resource          公共方法.txt
Resource          登录业务操作.txt
Resource          操作流程.txt

*** Test Cases ***
登录成功
    登录主流程    https://passport2.chaoxing.com/login?fid=&newversion=true&refer=https%3A%2F%2Fi.chaoxing.com    17306699570    a761338269
    隐式等待
    检测登录状态    广州航海学院

无密码登录失败
    登录主流程    https://passport2.chaoxing.com/login?fid=&newversion=true&refer=https%3A%2F%2Fi.chaoxing.com    17306699570    ${EMPTY}
    检测登录状态    请输入密码

无账号登录失败
    登录主流程    https://passport2.chaoxing.com/login?fid=&newversion=true&refer=https%3A%2F%2Fi.chaoxing.com    \    adasdas
    检测登录状态    请输入手机号

账号秘密错误登录失败
    登录主流程    https://passport2.chaoxing.com/login?fid=&newversion=true&refer=https%3A%2F%2Fi.chaoxing.com    asdasdasd    adasdas
    检测登录状态    手机号或密码错误
