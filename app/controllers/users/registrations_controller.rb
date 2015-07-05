class Users::RegistartionsController < Devise::RegistrationsController
  
  def create
    super do |resource|
      if params[:plan]
        resource.plan_id = params[:plan]
        if resouce.plan_id == 2
          resouce.save_with_payment
        else
          resouce.save
        end
      end
    end
  end
  
end