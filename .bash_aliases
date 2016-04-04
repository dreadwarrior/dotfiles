alias bassdrive_56k="mplayer -playlist 'http://www.bassdrive.com/v2/streams/BassDrive6.pls'"
alias dnbradio_192k="mplayer -playlist 'https://dnbradio.com/hi.pls'"
alias jungletrain_64k="mplayer -playlist 'http://jungletrain.net/64kbps.m3u'"
alias smoothjazztampa_128="mplayer -playlist 'http://sc1.mystreamserver.com:8132/listen.pls?sid=1&t=.pls'"
alias psyradio_fm_128="mplayer -playlist 'http://streamer.psyradio.org:8030/listen.pls'"
alias bur_roots=""
alias bur_dancehall="mplayer -playlist 'http://yp.shoutcast.com/sbin/tunein-station.pls?id=201496'"
alias bur_ska=""
alias rmi='rm -i'
# @todo awk "NR==3 {gsub(/\(|\)/, \"\"); print \$1\"/\"\$3}"
alias vmpm='vname=`vagrant status | awk "NR==3 {print \\$1}"`; vid=`cat .vagrant/machines/\$vname/virtualbox/id`; VBoxManage showvminfo $vid | grep "^NIC.*host port"'
alias install-composer='curl -sS https://getcomposer.org/installer | php -- --filename=composer'
alias php='php -dzend_extension=xdebug.so'
alias phpunit='php $(which phpunit)'

