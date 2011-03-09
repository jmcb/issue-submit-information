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
            url = url_for(:controller => 'issues', :action => 'show', :id => @issue)
            flash[:notice] << " <a href='#{url}'>#{issue.id}</a>"
            return without
        end

    end
end
