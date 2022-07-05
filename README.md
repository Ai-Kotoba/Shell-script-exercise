### 写在前面：
1. ##### 本项目仅供个人学习使用，并未考虑防御式编程，且仅在个人设备上测试过，所有代码请务必在限定的文件夹中测试后再运行，以防损失重要文件！
2. ##### 阅读源码前请先确认您有shell script编程的相关知识贮备，例如通读过《Linux命令行大全 第二版》。
3. ##### 脚本测试后应放在home/username/bin中再在命令行执行，若无bin文件夹，请先创建，若无执行权限请使用：
    ```shell
    chmod 755 /home/USERNAME/bin/SCRIPTNAME
    # 将USERNAME和SCRIPTNAME替换为相应用户名和脚本名
    ```


### 开发环境：
##### Ubuntu22.04，Shell(bash)，Visual Studio Code(扩展：shellman、shell-format、ShellCheck)

### 目录：
1. [对文件从00000~99999批量进行编号](#jump)

### 使用说明和思考：
1. <span id="jump">对文件从00000~99999批量进行编号</span>
    ```shell
    aikotoba@AiKotoba-Ubuntu:~/Pictures/interesting$ batch.bash 
    Please input a directory name->.
    aikotoba@AiKotoba-Ubuntu:~/Pictures/interesting$ 
    ```



