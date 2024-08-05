# FPGA电子琴电路
## 开发环境
 - Quartus (Quartus Prime 18.1) Lite Edition
 - Intel MAX 10 10M08SAM153C8G
## 实现功能
 - 通过.mif文件演奏歌曲
 - 用4x4矩阵键盘设计出电子琴，能够弹奏歌曲
## 原理
### 1.1 硬件发声原理、
乐曲中的每一个音符对应着一个确定的频率，想要蜂鸣器发出不同音符的音调，只需要控制FPGA开发板输出相应音符的频率即可。
### 1.2 音符频率的获得
在FPGA开发板上有12MHz的晶振，只需对其进行12分频，即可获得1MHz的基准频率信号。
|音频|C(1)|D(2)|E(3)|F(4)|G(5)|A(6)|B(7)|
|:---|:---|:---|:---|:---|:---|:---|:---|
|中央C|262|296|330|349|392|440|494|
|高音|523|587|659|698|784|880|988|
