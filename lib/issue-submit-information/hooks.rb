module IssueSubmitInformation
    module Hooks
        class Hooks < Redmine::Hook::ViewListener

            def controller_issues_new_after_save (context = { })
                return unless context[:issue]

                issue = context[:issue]

                flash[:notice] = l(:notice_successful_issue_create, link_to_issue(issue, :project => issue.project))

            end
        end
    end
end
