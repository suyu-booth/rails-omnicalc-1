Rails.application.routes.draw do
  get("/", {
    :controller: "calc",
    :action => "homepage"
  })
  
  get("/square/new", {
    :controller: "calc",
    :action => "add_form"
  })
  get("/square/results", {
    :controller: "calc",
    :action => "add_result"
  })
  get("/square_root/new", {
    :controller: "calc",
    :action => "sub_form"
  })
  get("/square_root/results", {
    :controller: "calc",
    :action => "sub_result"
  })
  get("/payment/new", {
    :controller: "calc",
    :action => "mult_form"
  })
  get("/payment/results", {
    :controller: "calc",
    :action => "mult_result"
  })
  get("/random/new", {
    :controller: "calc",
    :action => "div_form"
  })
  get("/random/results", {
    :controller: "calc",
    :action => "div_result"
  })
end
