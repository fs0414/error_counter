Rails.application.routes.draw do
  mount ErrorCounter::Engine => "/error_counter"
end
