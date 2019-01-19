testport() { echo | nc -w1 $1 $2 >/dev/null 2>&1; if [[ $? -eq 0 ]]; then echo "open"; else echo "closed"; fi; }
