echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic hardware/interfaces hardware/ril system/core"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/Infinix/X556/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory