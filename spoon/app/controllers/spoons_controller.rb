class SpoonsController < ::ApplicationController

  before_filter :authorize
  before_filter :find_system, :only=>[:jelly]

  def rules
    read_system = lambda{System.find(params[:id]).readable?}
    {
      :jelly => read_system,
      :welcome => lambda{true}
    }
  end

  def jelly
    render :partial=>'jelly', :locals=>{:system=>@system, :name => controller_display_name}
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
