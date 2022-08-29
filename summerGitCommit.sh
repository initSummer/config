str=""
for i in "$*"; do
	git add $i
	str=$str" "$i
done
git commit -m "Change $str"

