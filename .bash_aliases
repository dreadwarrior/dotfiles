alias rmi='rm -i'
# @todo awk "NR==3 {gsub(/\(|\)/, \"\"); print \$1\"/\"\$3}"
alias vmpm='vname=`vagrant status | awk "NR==3 {print \\$1}"`; vid=`cat .vagrant/machines/\$vname/virtualbox/id`; VBoxManage showvminfo $vid | grep "^NIC.*host port"'
alias install-composer='curl -sS https://getcomposer.org/installer | php -- --filename=composer'
alias php='php -dzend_extension=xdebug.so'
alias phpunit='php $(which phpunit)'
