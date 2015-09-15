class OnboardingAppController < ApplicationController
  def index
    app_name = "businessdotcom-onboarding:"
    if params[:index_key]
      redis_key = app_name + params[:index_key]
      @payload = $redis.get(redis_key)
    else
      redis_key = app_name + "current"
      index = $redis.get(redis_key)
      @payload = $redis.get(index)
    end
  end
end
