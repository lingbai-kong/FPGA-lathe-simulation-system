# FPGA-lathe-simulation-system
同济大学CS《数字逻辑》大作业: 车床仿真系统TongJi University CS digital logic assignment: lathe simulation system
## 概述

本项目是为2019年同济大学计算机系数字逻辑课程期末作业。基于NEXYS 4 DDR Atrix-7开发板的一款车床仿真系统。

## 背景

本来想用摄像头模块来着，但太菜了写不出来摄像头驱动😭。于是退而求其次写了这个车床仿真系统，没想到金工实习学到的东西居然能在计算机课程上用到的🤣。两年后看这个项目感觉完成度还挺高的，当时年少不知头发贵，肝了一个月。因为那时候刚刚会用Verilog，所以代码肯定是个屎山，我现在都不想看。

## 设备

1. NEXYS 4 DDR Atrix-7开发板：由 Xilinx公司开发出的一款现场可编程门阵列（FPGA）开发板。

2. 显示器：使用VGA接口，本项目使用640×480分辨率。

3. 鼠标：使用USB接口，服从PS2协议。

4. 声音传感器（LM386）：可以检测周围环境声音的有无和判断声音强度的大小，本项目中接收器数字量输出信号。

5. 七段数码管：一种半导体发光器件，可以现实简单的数字和字母。

## 系统总框图

![](https://github.com/lingbai-kong/FPGA-lathe-simulation-system/blob/main/static/top.png)

## 运行演示

![](https://github.com/lingbai-kong/FPGA-lathe-simulation-system/blob/main/static/example1.png)

![](https://github.com/lingbai-kong/FPGA-lathe-simulation-system/blob/main/static/example2.png)

## 效果对比

本车床仿真系统做出的锤柄

![](https://github.com/lingbai-kong/FPGA-lathe-simulation-system/blob/main/static/mysys.png)

车床加工的锤柄

![](https://github.com/lingbai-kong/FPGA-lathe-simulation-system/blob/main/static/hammer.jpg)

专业的数控车床仿真系统

![](https://github.com/lingbai-kong/FPGA-lathe-simulation-system/blob/main/static/professional.png)

## 备注

现在本项目已经落后于课程标准，可能都达不到申优标准了，据了解下届同学外设已经是摄像头起步了，所以，祝各后浪好运！
