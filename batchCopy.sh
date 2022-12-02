echo '# ================ github: @dedecidao ===================== #
#  Instructions: Run this script in the root folder with the files you want to copy'
echo 'Edit the Script with the origin and destination of the files.
# ================ github: @dedecidao ==================== #'

echo 'Running..'
#If You Want Add a Root Path for use on C Function
Path=''
Ok=0
Err=0
Total=0
ckErr()
{
	[[ $1 = 0 ]] && Ok=$((Ok+1)) || Err=$((Err+1)) 
	
}
c()
{
	Total=$((Total+1))
	cp $1 $2
	ckErr $?
}
# ====================== EDIT HERE ======================= #
# =================== c origin destiny =================== #
# ======================================================== #

c foo/foo1.php $Path/foo/foo1.php
c bar/bar.php $Path/arquivo_carteirinha/index.php

#ADD MORE FILES...


echo $Total'/'$Ok 'Copies' $Err 'Errors'