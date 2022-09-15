for i in "$*"; do
	git add $i
done
git commit -m "$(date)"
sudo git push origin main
