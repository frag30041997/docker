FROM docker/whalesay

RUN apt-get -y update && apt-get install -y fortunes figlet

CMD figlet "Hi boss" | cowsay -n && /usr/games/fortunes -a | cowsay

