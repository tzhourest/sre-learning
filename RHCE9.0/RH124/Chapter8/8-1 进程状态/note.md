# 学习笔记
日期：2026-05-10
主题：进程状态

##  进程的几种状态以及标识符
- 进程的状态有Running、Sleeping、Stopped、Zombie
- Running状态的标识符是R，TASK_RUNNING：表示该进程要么正在运行，要么在等待被执行
- Sleeping状态的标识符是S、D、K、I。<br>S，TASK_INTERRUPTIBLE：该进程正在等待条件的出现，满足条件即可恢复到运行状态。<br>D，TASK_UNINTERRUPTIBLE：同样是睡眠状态但是不会响应任何信号。<br>K，TASK_KILLABLE：与D状态相同但是可以响应信号从而被终止。<br>I，TASK_REPORT_IDLE：状态D的一个子集能够接受致命信号，内核在计算负载平均值时不计入这些进程。
- Stopped状态的标识符是T，TASK_STOPPED：进程已被停止，可以接受信号恢复运行。TASK_TRACED：正在调试的进程会暂停运行。
- Zombie状态的标识符有Z和X。<br>Z，EXIT_ZOMBIE：当子进程退出时会向父进程发送信号，除了PID之外的所有资源都将被释放。<br>X，EXIT_DEAD：当父进程清理剩余的子进程结构时，该进程将被完全释放。
