require 'sinatra'
require 'sinatra/reloader'

get '/' do
	@question = "Do you have a test for that?"
	@yes = "/pass"
	@no = "/write_test"
	erb :index
end

get '/pass' do
	@question = "Does the test pass?"
	@yes = "/refactor"
	@no = "/write_code"
	erb :index
end

get '/refactor' do
	@question = "Need to refactor?"
	@yes = "/do_refactor"
	@no = "/new_feature"
	erb :index
end

get '/do_refactor' do
	@question = "Refactor the code."
	@done = "/pass"
	erb :result
end

get '/write_code' do
	@question = "Write just enough code for the test to pass."
	@done = "/pass"
	erb :result
end

get '/write_test' do
	@question = "Write test."
	@done = "/pass"
	erb :result
end

get '/new_feature' do
	@question = "Select a new feature to implement."
	@done = "/"
	erb :result
end
