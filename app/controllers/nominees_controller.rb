class NomineesController < ApplicationController

  def this_week
    # NomineeMap.joins(:jeans).group("nominee_maps.nominee_id").group("jeans.id").order("count(nominee_id), count_all DESC").limit(5)
    nominees = NomineeMap.group(:id)
    @jeans = nominees.group(:jeans_id).order('count(nominee_id) desc').limit(5)
  end

  def last_weeks_winner

  end

end
