# A plugin for redmine, makes issues orderable for user

## install

~~~sh
cd <redmine_path>/plugins
git clone https://github.com/qhwa/manually_order_issue.git
rake redmine:plugins:migrate
~~~

This plugin allows you to assign an ordering field for issues:

![form](http://gtms02.alicdn.com/tps/i2/T1A1GLFzdbXXXsAinc-559-429.jpg)

The higher value it has, the toper location the issue will appear.
