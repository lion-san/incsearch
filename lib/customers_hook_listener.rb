class CustomersHookListener < Redmine::Hook::ViewListener
  include ApplicationHelper
  render_on :view_issues_form_details_bottom, :partial => "customer/suggest"
end
