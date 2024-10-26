class NewController < ActionController::Base

  def square
    @the_num = params.fetch("num_input").to_f
    @the_result = @the_num ** 2
  
  render({:template => "calc_template/squared"})
  end

  def square_root
    @the_root= params.fetch("root_input").to_f
    @root_result = @the_root ** 0.5
  
    render({:template => "calc_template/rooted"})
  end

  def payment
    @the_apr = params.fetch("apr_input").to_f
    @the_apr_unit = (params.fetch("apr_input").to_f)/100/12
    @the_year = params.fetch("years_input").to_i 
    @the_year_unit = params.fetch("years_input").to_i * 12
    @the_principal = params.fetch("principal_input").to_f
    @the_principal_unit = params.fetch("principal_input").to_f
    @payment_result = (@the_apr_unit*@the_principal_unit) / (1-(1+@the_apr_unit)**(@the_year_unit*-1)).to_f
  
  render({:template => "calc_template/paid"})
  end

  def random_num 
    @the_min= params.fetch("min_input").to_f
    @the_max= params.fetch("max_input").to_f
    @random_result = rand(@the_min..@the_max)
  
  render({:template => "calc_template/randy"})
  end

  def home
    render({:template => "calc_template/house"})
  end 

end
