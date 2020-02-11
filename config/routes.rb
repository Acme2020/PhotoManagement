Rails.application.routes.draw do
  devise_for :users
  get "/", to: "photos#index"
  resources :photos, except: [:index] do
    get "/download_image", to: 'photos#download_image' #the do says that everything that comes after it and before the end will have /photos in front of it. But it also requires that stuff after it to precisly name id. So params[:id] does not work. You will have to use params[photo_id]. Check photos_controller "download_iamge". If you want to add an action to a page you have to define a new route. The request from the view will go the routes and the route then calls the action from the controller. This is why a new route is needed. Den link photo_download_image_path im show-view kann man auch in rails routes sehen. Der geht zu den routes von das aus zum controller. Eine action kann auch ausgeführt werden, wenn keine page dafür existiert. Ist bei create bspw. auch so.
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
