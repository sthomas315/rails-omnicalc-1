Rails.application.routes.draw do

    
    get("/square/results", {:controller=> "new", :action => "square"})
    get("/root/results", {:controller=> "new", :action => "square_root"})
    get("/payment/results", {:controller=> "new", :action => "payment"})
    get("/random/results", {:controller=> "new", :action => "random_num"})
    get("/", {:controller => "new", :action => "homepage"})

end
