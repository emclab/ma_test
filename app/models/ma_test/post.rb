module MaTest
  class Post < ActiveRecord::Base
    attr_accessible :log, :subject, :as => :role_new
    attr_accessible :log, :as => :role_update
  end
end
