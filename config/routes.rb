PlannerWeb::Application.routes.draw do

  filter :locale

  mount PlannerKonopas::Engine => '/konopas', :as => 'konopas'
  mount PlannerCore::Engine => '/' #, as: 'planner_core'

end
