echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="frameworks/base frameworks/opt/telephony hardware/libhardware packages/services/Telephony system/netd"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Reverting $dir patches..."
	git apply --reverse $rootdirectory/device/meizu/m3/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
