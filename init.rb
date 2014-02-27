require 'redmine'
require 'redmine/helpers/gantt'
require 'issue'

require_dependency 'manually_order_issue/hooks'

Redmine::Plugin.register :manually_order_issue do
  name 'Manually Order Issue plugin'
  author 'qhwa'
  description 'This is a redmine plugin for manually ordering issues'
  version '0.0.1'
  url 'https://github.com/qhwa/redmine_manually_ordering_issues'
  author_url 'https://github.com/qhwa/redmine_manually_ordering_issues'
end

require_relative 'app/models/orderable'
require_relative 'lib/redmine/helpers/ordered_gantt'

Issue.send :include, Orderable
Redmine::Helpers::Gantt.send :include, Redmine::Helpers::OrderedGantt
