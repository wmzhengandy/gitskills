echo "hello,word"
a=5
b=8
c=`expr $a + $b` #反引号，expr计算，本身不支持计算
d=`expr $a - $b`
e=`expr $a \* $b`
f=`expr $b / $b`
echo $c
echo $d
echo $e
echo $f


if [ $a != $b ] ;then
	echo "a is not equal b";
fi

if [ $a -gt $b ]
	then
	echo "a is bigger than b"
else
	echo "b is bigger than a"
fi


str1="nihao"
str2="nihao"

if [ $str1 == $str2 ]
	then 
	echo "str1 is equal str2"
else
	echo "str1 is not equal str2"
fi

if [ -z $str2 ] #test str2.lenth is zero
	then
	echo "str2.lenth is 0" 
else
	echo "str2.lenth is not zero"
fi

if [ -n $str1 ]
	then
	echo "str1.lenth is not zero"
else
	echo 'str1.lenth is zero'
fi

if [ -d ../ ] #test ../ is a dir
	then
	echo 'current is dir'
else
	echo 'current file is not dir'
fi

if [ -f ../json.txt ] #test ../json.txt is a ordinary file, -x (can write), -s(file.size is empty) -e(file is exist)
	then
	echo 'current file is a ordinary file'
else
	echo 'current file is not a ordinary file'
fi

str3=$str1" "$str2 #strstr string
echo $str3

echo ${#str3} #output str3's lenth
echo ${str3:1:5} #output str3's 1 to 5 

array=(1 2 3 4)
echo ${array[3]}
echo ${#array[*]}


test $a -eq $b

for i in {1..5}
do
	echo $i
done

echo "####"

for i in ${array[*]}
do
	echo $i
done

count=0
while [ $count -lt 10 ]
do
	echo "count is "" "$count
	count=`expr $count + 1`
	if [ $count == 5 ]
		then
		break
	fi
done


test(){
	aa=5
	bb=8
	return `expr $aa + $bb`
}

test
result=$?  #function's return value
echo $result

mytest(){
	echo $1
	echo $2
	echo $*
}
# 重定向 > ,   >> apend ;   input < file 获取输入流




