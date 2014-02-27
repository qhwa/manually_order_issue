module ManuallyOrderIssue
  module OrderableIssue
    def self.included( base )
      base.class_eval do

        safe_attributes 'ordering',
          :if => lambda {|issue, user|
            issue.new_record? || user.allowed_to?(:edit_issues, issue.project)
          }

        scope :user_ordered, lambda {
          order( 'ordering DESC' )
        }

        default_scope -> { user_ordered }

      end
    end
  end
end
