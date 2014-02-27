module Redmine::Helpers
  module OrderedGantt
    def self.included( base )
      def base.sort_issue_logic(issue)
        julian_date = Date.new()
        ancesters_start_date = []
        current_issue = issue
        puts "*" * 50
        puts issue.ordering
        puts "*" * 50
        begin
          ancesters_start_date.unshift([
            -(current_issue.start_date || julian_date).to_time.to_i * (issue.ordering + 1),
            current_issue.id])
          current_issue = current_issue.parent
        end while (current_issue)
        ancesters_start_date
      end
    end
  end
end
