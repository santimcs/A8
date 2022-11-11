cd\devkit
devkitvars
cd\ruby

rails new my_port -d mysql
cd my_port
rake db:create

rails g controller pages home
modify routes.rb
    root :to => 'pages#home'  

rails s
localhost:3000

Problem
=======
ExecJS::ProgramError in Pages#home
Showing C:/Ruby/my_port/app/views/layouts/application.html.erb where line #6 raised:
TypeError: Object doesn't support this property or method

Solution
========
1) Delete turbolink from stylesheet_link_tag & javascript_link_tag
2) Modify application.js to disable turbolinks
3) Edit gemfile to disable turbolinks
4) Add gem 'coffee-script-source', '1.8.0' to gemfile (was '1.10.0')
5) bundle update

Bootsrap
========
modify home.html.erb to check that bootstrap is included or not 
<div class ="page-header text-center" > 
  <h1>Home</h1>
</div>

If bootsrap is not included then
Modify Gemfile
	gem 'bootstrap-sass', '~> 3.3.5'
Modify pages.scss
    @import "bootstrap";	

Modify pages to carousel
========================
1) Modify home.html.erb
2) copy bootstrap.min.js to assets/javascripts folder  

Add table Sector
================
rails g scaffold sector name:string pe:decimal pbv:decimal 
edit sector migration to modify number of decimal
	precision: 9, scale: 2
rake db:migrate

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
  <table id="sectors" class="table table-striped table-hover">
  Modify column header for show, edit, destroy  
 ****** cannot use col span on header as query cannot assign sortable ****

edit sectors.coffee
jQuery ->
        $('#sectors').dataTable({
        pagingType: 'full_numbers', 
        order: [[ 0, "asc" ]]
        })

Create menu
===========
1) Modify application.html.erb
2) Modify application.css to increase space between menu and content
	.bodyContent {
	margin-top: 50px;
	}

Add table Stock
================
rails g scaffold stock name:string in_port:boolean on_watch:boolean buy_target:decimal sell_target:decimal status:string shares:integer
edit stock migration to modify number of decimal
	precision: 6, scale: 2
rake db:migrate	
edit index.html
  <table id="stocks" class="table table-striped table-hover">
edit stocks.coffee
jQuery ->
        $('#stocks').dataTable({
        pagingType: 'full_numbers', 
        order: [[ 0, "asc" ]]
        })  

I18n
====
1) copy th.yml to config/locales ( from https://github.com/svenfuchs/rails-i18n/tree/master/rails/locale)
2) modify config/locales/application.rb
     config.i18n.load_path += Dir[Rails.root.join('lib', 'locales', '*.{rb,yml}').to_s]
     config.i18n.default_locale = :th
3)   number_to_currency(stock.buy_target, locale: :th)        