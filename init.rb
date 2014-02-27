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

require_relative 'lib/manually_order_issue/ordered_gantt'
require_relative 'lib/manually_order_issue/orderable_issue'

Issue.send :include, ManuallyOrderIssue::OrderableIssue
Redmine::Helpers::Gantt.send :include, ManuallyOrderIssue::OrderedGantt
