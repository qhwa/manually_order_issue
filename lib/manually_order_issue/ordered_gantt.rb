module ManuallyOrderIssue
  module OrderedGantt
    def self.included( base )
      def base.sort_issue_logic(issue)
        julian_date = Date.new()
        ancesters_start_date = []
        current_issue = issue

        begin
          ancesters_start_date.unshift([
            -current_issue.ordering,
            current_issue.id])
          current_issue = current_issue.parent
        end while (current_issue)
        puts "*" * 50
        p ancesters_start_date
        puts "*" * 50

        ancesters_start_date
      end
    end
  end
end
