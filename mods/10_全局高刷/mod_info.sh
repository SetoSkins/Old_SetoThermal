# 安装时显示的模块名称
mod_name="全局高刷"
# 功能来源
# 模块介绍
mod_install_desc="和dfps冲突，建议二选一"
# 安装时显示的提示
mod_install_info="是否安装[$mod_name]"
# 按下[音量+]选择的功能提示
mod_select_yes_text="安装[$mod_name]"
# 按下[音量+]后加入module.prop的内容
mod_select_yes_desc="[$mod_name]"
# 按下[音量-]选择的功能提示
mod_select_no_text="不安装[$mod_name]"
# 按下[音量-]后加入module.prop的内容
mod_select_no_desc=""
# 支持的设备，支持正则表达式(多的在后面加上|)
mod_require_device=".{0,}" #全部
# 支持的系统版本，持正则表达式
mod_require_version=".{0,}" #全部
# 支持的设备版本，持正则表达式
mod_require_release=".{0,}" #全部

mod_install_yes()
{
add_service_sh $MOD_FILES_DIR/service.sh
{
until [[ "$(getprop sys.boot_completed)" == "1" ]]; do
sleep 1
done
settings put system min_refresh_rate 120
}&
		return 0		
}

mod_install_no()
{
		return 0
}
