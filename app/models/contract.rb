class Contract < ActiveRecord::Base
  # attr_accessible :title, :body
  #scope :find_acts, lambda { |acts| where("type_of_act = ?", "%mitzvah")}
  #scope :find_acts, where(type_of_event: "%Mitzvah%")
   belongs_to :act
   default_scope  conditions: { contract_status: ["Contract Received","Booked","Contract Sent", "Booked- PAY ACT","Complimentary","Promotional","Promo- WTA to pay"]}
   scope :mitzvah, where("type_of_event LIKE ? OR type_of_event LIKE ? OR type_of_event LIKE ?", "Bar%", "Bat%", "B'n%")
   scope :style, where("act_form LIKE ?","Variety Music").order('act_booked ASC')
   #scope :nottoday, lambda { |user| where("date_of_event = ?", user)}
end
