class Article < ApplicationRecord
	#Active Record automatically defines model attributes for every table column, so you don't have to declare those attributes in your model file
	#@see https://guides.rubyonrails.org/active_record_validations.html
	#@see https://guides.rubyonrails.org/active_record_validations.html#working-with-validation-errors
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
