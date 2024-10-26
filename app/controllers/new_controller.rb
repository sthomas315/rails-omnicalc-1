class NewController < ApplicationController
 
  def square_new
    render({ :template => "calc_template/squareform" })
  end

  def square
    @the_num = params.fetch("num_input").to_f
    @the_result = @the_num ** 2
    render({:template => "calc_template/squared"})
  end
  

  def square_root_new
    render({ :template => "calc_template/rootform" })
  end

  def square_root
    @the_root= params.fetch("root_input").to_f
    @root_result = @the_root ** 0.5
    render({:template => "calc_template/rooted"})
  end
    
  def payment_new
    render({:template => "calc_template/payform"})
  end


  def payment
    @the_apr = params.fetch("apr_input").to_f
    r = @the_apr / 100 / 12
    @the_year = params.fetch("years_input").to_i
    n = @the_year * 12
    @the_principal = params.fetch("principal_input").to_f
    pv = @the_principal
    @payment_result = (r * pv) / (1 - (1 + r)**(-n))
    
    render({:template => "calc_template/paid"})
  end
  

  def random_new
    render({:template => "calc_template/randform" })
  end

  def random_num 
    @the_min= params.fetch("min_input").to_f
    @the_max= params.fetch("max_input").to_f
    @random_result = rand(@the_min..@the_max)
    render({:template => "calc_template/randy"})
  end


end
