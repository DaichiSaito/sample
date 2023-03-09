Rails.application.routes.draw do
  root "sample#top"

  get "foo", to: "sample#foo"
end
