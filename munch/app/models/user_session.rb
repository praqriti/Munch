class UserSession < Authlogic::Session::Base

#  why is this used in rails 3
    include ActiveModel::Conversion
    extend ActiveModel::Naming
    def persisted?
      false
    end
  end
