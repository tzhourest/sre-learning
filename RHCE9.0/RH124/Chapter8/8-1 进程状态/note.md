# 学习笔记
日期：2026-05-10
主题：进程状态

##  进程的几种状态以及标识符
- 进程的状态有Running、Sleeping、Stopped、Zombie
- Running状态的标识符是R，TASK_RUNNING：表示该进程要么正在运行，要么在等待被执行
- Sleeping状态的标识符是S、D、K、I。S，TASK_INTERRUPTIBLE：该进程正在等待条件的出现，满足条件即可恢复到运行状态。D，TASK_UNINTERRUPTIBLE：同样是睡眠状态但是不会响应任何信号。K，TASK_KILLABLE：与D状态相同但是可以响应信号从而被终止。I，TASK_REPORT_IDLE：状态D的一个子集能够接受致命信号，内核在计算负载平均值时不计入这些进程。
- Stopped状态的标识符是T
- Zombie状态的标识符有Z和X
