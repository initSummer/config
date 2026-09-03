# 设置补全超时为 1 秒（1000ms）
bleopt complete_timeout_auto=1000
bleopt complete_limit_auto=50

# 增加自动补全的延迟，避免输入过快时频繁卡顿
bleopt complete_auto_delay=500

ble-face auto_complete='fg=240,underline,italic'

ble-face command_builtin='fg=86'          # 内建命令
ble-face command_function='fg=108,bold'   # 函数调用

bleopt exec_elapsed_mark=  #禁用时间统计

