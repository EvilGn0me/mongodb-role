MongoDB-role
=========

This role installs mongodb from official repo.

How to use
======
All variables that should be configured stored in mongodb_conf dictionary.
Not much can be changed via variables. But here is default variables file:
~~~
mongodb_conf:
  user: 'administrator'
  password: 'change_me'
  host: '127.0.0.1'
  cache_size: '18'
  port: '27017'

~~~

Zabbix support
======
To enable zabbix support you should setup zabbix_url variable

Also your inventory should contain zabbix variables for host.
Example:
~~~
zabbix_url: 'http://zabbix.example.com'   # host url for zabbix server
zabbix_user: 'Admin'                      # username
zabbix_pass: 'change_me'                  # password
zabbix_dir: '/etc/zabbix/zabbix_agentd.d' # directory that contains userparameters
~~~
