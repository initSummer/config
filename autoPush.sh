for i in "$*"; do
	git add $i
done
git commit -m "$(date)"
xclip -sel clip ~/GitPwd
sudo git push origin main << EOF
647475
initSummer
EOF
