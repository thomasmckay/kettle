class SpoonsController < ::ApplicationController

  before_filter :authorize
  before_filter :find_system, :only=>[:gss]

  def rules
    read_system = lambda{System.find(params[:id]).readable?}
    {
      :gss => read_system
    }
  end

  def gss
    render :partial=>'gss', :locals=>{:system=>@system, :name => controller_display_name}
  end

  private

  def find_system
    sys_id = params[:id] || params[:system_id]
    @system = System.find(sys_id)
  end

  def controller_display_name
    return 'spoons'
  end
end
