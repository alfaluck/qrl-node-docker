netsh interface portproxy add v4tov4 listenport=8080 connectaddress=10.0.75.2
netsh interface portproxy add v4tov4 listenport=8888 connectaddress=10.0.75.2
netsh interface portproxy add v4tov4 listenport=9000 connectaddress=10.0.75.2
netsh interface portproxy show all
pause