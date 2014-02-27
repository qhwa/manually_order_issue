# A plugin for redmine, makes issues orderable for user

## install

~~~sh
cd <redmine_path>/plugins
git clone https://github.com/qhwa/manually_order_issue.git
rake redmine:plugins:migrate
~~~

This plugin allows you to assign an ordering field for issues:

![form](http://gtms01.alicdn.com/tps/i1/T11fmMFuJbXXcX7EP1-592-188.jpg)

The higher value it has, the toper location the issue will appear.
