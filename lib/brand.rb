class Brand < ActiveRecord::Base
  has_many(:stores)
  before_save(:capitalize_name)
  validates(:name, :uniqueness => {:case_sensitive => false})

 private

 def capitalize_name
    self.name=(name().titleize())
  end
end
