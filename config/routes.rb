Rails.application.routes.draw do

    
    get("/square/results", {:controller=> "new", :action => "square"})
    get("/root/results", {:controller=> "new", :action => "square_root"})
    get("/payment/results", {:controller=> "new", :action => "payment"})
    get("/random/results", {:controller=> "new", :action => "random_num"})
    
    get("/", {:controller => "new", :action => "square_new"})
    get("/square/new", {:controller=> "new", :action => "square_new"})
    get("/square_root/new", {:controller=> "new", :action => "square_root_new"})
    get("/payment/new", {:controller=> "new", :action => "payment_new"})
    get("/random/new", {:controller=> "new", :action => "random_new"})


end
