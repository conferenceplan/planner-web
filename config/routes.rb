PlannerWeb::Application.routes.draw do

  # filter :locale
  # mount Interpret::Engine => "/interpret" # cause the interpret gem has the old way of defining the engine mount

  mount PlannerCore::Engine => '/' #, as: 'planner_core'

end
