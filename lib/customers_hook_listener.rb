class CustomersHookListener < Redmine::Hook::ViewListener
  render_on :view_issues_form_details_bottom, :partial => "customer/suggest"
end
