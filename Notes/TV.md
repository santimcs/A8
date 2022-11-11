cd\devkit
devkitvars
cd\ruby
rails new UCL -d mysql

edit gemfile
gem 'mysql2', '~> 0.3.13'
gem 'coffee-script-source', '1.8.0'

cd UCL
bundle update

rake db:create

rails g model country abbr:string name:string
edit country
rake db:migrate

rails g uploader image

rails g scaffold club abbr:string country:string group:string image:string
edit migrate erase timestamp
rake db:migrate

edit club model
	mount_uploader :image, ImageUploader
	default_scope { order('abbr') }

rails g model matchday round:string date:date
erase timestamp
rake db:migrate
import from matchdays.csv

rails g scaffold schedule matchday_id:integer
club_id:integer opponent_id:integer 
rake db:migrate

rails g scaffold result schedule_id:integer
club_goals:integer opponent_goals:integer 
rake db:migrate
edit schedule model
  belongs_to :matchday
  belongs_to :club
  belongs_to :opponent, :class_name => 'Club'

edit schedule\_form.html.erb
    <%= f.select(:matchday_id,
  options_from_collection_for_select(Matchday.all, :id, :round), {:prompt => 'Choose Matchday'}) %>
      <%= f.select(:club_id,
  options_from_collection_for_select(Club.all, :id, :abbr), {:prompt => 'Please Choose'}) %>
      <%= f.select(:opponent_id,
options_from_collection_for_select(Club.all, :id, :abbr), {:prompt => 'Please Choose'}) %>

edit schedule/show.html.erb
  <%= @schedule.matchday.round %>  
  <p>
  <strong>Date:</strong>
  <%= @schedule.matchday.date.strftime("%A, %b %d, %Y") %>
</p>

rails g scaffold result schedule_id:integer
club_goals:integer opponent_goals:integer 
rake db:migrate
edit result model
	belongs_to :schedule

rails g model standing club_id:integer wins:integer draws:integer losses:integer
goals_for:integer goals_against:integer points:integer
rake db:migrate

edit model standing
belongs_to :club
import from csv file

rails g scaffold standing club_id:integer wins:integer draws:integer losses:integer goals_for:integer goals_against:integer
points:integer --skip-migration 

dataTable
=========
edit gem file
  gem 'jquery-datatables-rails', github: 'rweng/jquery-datatables-rails'

 Run the install generator:

$ rails generate jquery:datatables:install bootstrap3

This will add to the corresponding asset files

# app/assets/javascripts/application.js
//= require dataTables/jquery.dataTables
//= require dataTables/bootstrap/3/jquery.dataTables.bootstrap

# app/assets/stylesheets/application.css
*= require dataTables/bootstrap/3/jquery.dataTables.bootstrap

Initialize your datatables using these option:

$('#datatable').dataTable({
  // ajax: ...,
  // autoWidth: false,
  // pagingType: 'full_numbers',
  // processing: true,
  // serverSide: true,

  // Optional, if you want full pagination controls.
  // Check dataTables documentation to learn more about available options.
  // http://datatables.net/reference/option/pagingType
});

edit index.html
  <table id="schedules" class="table table-striped table-hover">  

edit schedules.coffee
jQuery ->
        $('#schedules').dataTable({
        pagingType: 'full_numbers', 
        order: [[ 0, "asc" ],[ 1, "asc" ]]
        })

 ****** cannot use col span on header as query cannot assign sortable ****

Bootstrap
=========
edit gem file
gem 'bootstrap-sass', '~> 3.3.5'

edit application.css
.bodyContent {
margin-top: 50px;
}

copy bootstrap.min.js to assets/javascripts folder if want to use carousel

Add dailies table for each day programs
=======================================
rails g scaffold daily dow:string time:time channel_id:integer name:string description:text duration:integer
rake db:migrate

Modify daily model to add scope to select data for each day of week
-------------------------------------------------------------------
  belongs_to :channel
  DOW = [
              "Monday" ,
              "Tuesday",
              "Wednesday",
              "Thursday",
              "Friday",
              "Saturday",
              "Sunday"
        ] 
  scope :by_dow, -> dow {
    where(dow: dow)  
  }

Modify daily controller to filter data for each day of week
-----------------------------------------------------------
  def list_by_dow
    @dailies = Daily.by_dow(params[:param1])
  end

Create list_by_dow template from dailies.html.erb to display each day of week programs
--------------------------------------------------------------------------------------
  <h1><%= "#{params[:param1]} Schedule" %></h1>

Add menu for each day of week programs
--------------------------------------
            <li><%= link_to 'Monday', "/list_by_dow?param1=Monday" %></li>

Modify routes.rb for new url
----------------------------
    get "/list_by_dow", to: 'dailies#list_by_dow'