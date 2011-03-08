module IssueSubmitInformationPatch
    def self.included(base)
        base.send(:include, InstanceMethods)
        base.class_eval do
            alias_method_chain :create, :issue_link
        end
    end

    module InstanceMethods

        def create_with_issue_link
            without = create_without_issue_link
            flash[:notice] = l(:notice_successful_issue_create, view_context.link_to_issue(@issue, :project => @project))
            return without
        end
    
    end
end 
