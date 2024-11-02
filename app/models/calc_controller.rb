class CalcController < ApplicationController
  def homepage
    redirect("/square/new")
  end 
  def add_form
    render({ :template => "calc_templates/add1" })
  end

  def add_result
    @sq_new = params[:number]
    @sq_res = @sq_new.to_f**2
    render({ :template => "calc_templates/add2" })
  end
  def sub_form
    render({ :template => "calc_templates/sub1" })
  end

  def sub_result
    @sqrt_new = params[:user_number]
    @sqrt_res = @sqrt_new.to_f**0.5
    render({ :template => "calc_templates/sub2" })
  end
  def mult_form
    render({ :template => "calc_templates/mult1" })
  end

  def mult_result
    @years = params[:user_years]
    @apr = params[:user_apr].to_f
    @pv = params[:user_pv].to_f
  
    @numerator = @apr/100/12 * @pv
    @denominator =  1- (1+@apr/100/12)**(-(@years.to_f)*12)
    render({ :template => "calc_templates/mult2" })
  end

  def div_form
    render({ :template => "calc_templates/div1" })
  end

  def div_result
    @mini = params[:user_min]
    @maxi = params[:user_max]
  
    @randi = rand(@mini.to_f..@maxi.to_f)
    render({ :template => "calc_templates/div2" })
  end


end
