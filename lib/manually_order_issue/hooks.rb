module ManuallyOrderIssue

  class Hooks < Redmine::Hook::ViewListener
    render_on :view_issues_form_details_bottom,
              :partial => 'hooks/manually_order_issue/view_issues_form_details_bottom'
  end

end
