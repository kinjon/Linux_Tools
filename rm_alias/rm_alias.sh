#!/bin/sh
trash_dir=~/trash/`date +%Y%m%d`
if [ ! -d ${trash_dir} ] ;then
	mkdir -p ${trash_dir}
fi

for i in $*
do
	suffix=`date "+%H%M%S"`
	if [ ! -d "${i}" ]&&[ ! -f "${i}" ];then	#首先判断是否是合法的文件或者文件夹
		if [ "${i}" != "-rf" ]&&[ "${i}" != "-f" ];then	 #这里对-rf进行处理，因为mv指令后面没有-rf,-f参数
			echo "[${i}] do not exist"
		fi
	else
		file_name=`basename $i`   #取得文件名称
		mv ${i} ${trash_dir}/${file_name}_${suffix}_${RANDOM}
		echo "[${i}] delete completed"
	fi
done

