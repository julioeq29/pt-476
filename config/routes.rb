Rails.application.routes.draw do
  # Landing
  root to: 'pages#the_batch'
  # Pages
  # get :the_batch, to: 'pages#the_batch'
  get :the_numbers,  to: 'pages#the_numbers'
  get :the_projects, to: 'pages#the_projects'
  get :the_TAs,      to: 'pages#the_TAs'
  get :quick_note,   to: 'pages#quick_note'
end
