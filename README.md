# nautilus_scrpt_rar_compress

基于 nautilus 实现的自动压缩 rar 包脚本

gnome 中自带的压缩工具不能创建 rar 压缩包,所以实现了本脚本

本脚本基于 gnome 环境，其他环境需要自行测试

压缩完成后自动通知，基于 notify-send

压缩使用 rar

安装:

将脚本放置于 ~/.local/share/nautilus/scripts 下，在右键菜单中就会出现此脚本

脚本使用:

点击需要压缩的文件，在菜单中点击此脚本，默认在当前目录自动压缩为 rar 包，且提示成功
