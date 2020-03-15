Rails.application.routes.draw do
  root 'epicenter#feed'

  get 'show_user' => 'epicenter#show_user'

  get 'now_following' => 'epicenter#now_following'

  get 'unfollow' => 'epicenter#unfollow'

  get 'tag_tweets' => 'epicenter#tag_tweets'

  get 'all_users' => 'epicenter#all_users'

  get 'user_followings' => 'epicenter#user_followings'

  get 'user_followers' => 'epicenter#user_followers'

  resources :tweets
  devise_for :users
end