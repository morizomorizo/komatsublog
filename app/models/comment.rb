class Comment < ActiveRecord::Base
  attr_accessible :issue_id, :text, :user_id
end
