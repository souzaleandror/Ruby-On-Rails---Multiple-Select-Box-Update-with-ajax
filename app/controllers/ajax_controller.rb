class AjaxController < ApplicationController
  def update_state
    # updates songs based on artist selected
    state = State.find(params[:state_id])
    @cities = state.cities.ordered_name.map{|s| [s.name, s.id]}.insert(0, "Select a city")
  end
end
