module ApplicationHelper
def number_to_euro(amount)
		number_to_currency(amount, :unit => '&euro;')
	end

def signed_in?
       if session[:member_id].nil?
	return
       else
	@current_member = Member.find_by_id(session[:member_id])
       end
  end

end
