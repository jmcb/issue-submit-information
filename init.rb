require 'redmine'

require 'dispatcher'

Redmine::Plugin.register :issue_submit_information do
  name 'Issue Submit Information'
  author 'Jon McManus'
  url 'http://github.com/jmcb/issue-submit-information'
  author_url 'http://github.com/jmcb'
  description 'Provide issue information and link when creating new issue via "Submit and Create".'
  version '0.1'

  requires_redmine :version_or_higher => '0.8.0'
end
