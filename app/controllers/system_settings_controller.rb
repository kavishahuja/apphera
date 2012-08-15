class SystemSettingsController < InheritedResources::Base
  before_filter :authenticate_user!
  #before_filter :set_org
  
end
