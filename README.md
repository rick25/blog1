* Creacion :
		rails new blog1
		  create  
	      create  README.rdoc
	      create  Rakefile
	      create  config.ru
	      create  .gitignore
	      create  Gemfile
	      create  app
	      create  app/assets/javascripts/application.js
	      create  app/assets/stylesheets/application.css
	      create  app/controllers/application_controller.rb
	      create  app/helpers/application_helper.rb
	      create  app/views/layouts/application.html.erb
	      create  app/assets/images/.keep
	      create  app/mailers/.keep
	      create  app/models/.keep
	      create  app/controllers/concerns/.keep
	      create  app/models/concerns/.keep
	      create  bin
	      create  bin/bundle
	      create  bin/rails
	      create  bin/rake
	      create  config
	      create  config/routes.rb
	      create  config/application.rb
	      create  config/environment.rb
	      create  config/secrets.yml
	      create  config/environments
	      create  config/environments/development.rb
	      create  config/environments/production.rb
	      create  config/environments/test.rb
	      create  config/initializers
	      create  config/initializers/assets.rb
	      create  config/initializers/backtrace_silencers.rb
	      create  config/initializers/cookies_serializer.rb
	      create  config/initializers/filter_parameter_logging.rb
	      create  config/initializers/inflections.rb
	      create  config/initializers/mime_types.rb
	      create  config/initializers/session_store.rb
	      create  config/initializers/wrap_parameters.rb
	      create  config/locales
	      create  config/locales/en.yml
	      create  config/boot.rb
	      create  config/database.yml
	      create  db
	      create  db/seeds.rb
	      create  lib
	      create  lib/tasks
	      create  lib/tasks/.keep
	      create  lib/assets
	      create  lib/assets/.keep
	      create  log
	      create  log/.keep
	      create  public
	      create  public/404.html
	      create  public/422.html
	      create  public/500.html
	      create  public/favicon.ico
	      create  public/robots.txt
	      create  test/fixtures
	      create  test/fixtures/.keep
	      create  test/controllers
	      create  test/controllers/.keep
	      create  test/mailers
	      create  test/mailers/.keep
	      create  test/models
	      create  test/models/.keep
	      create  test/helpers
	      create  test/helpers/.keep
	      create  test/integration
	      create  test/integration/.keep
	      create  test/test_helper.rb
	      create  tmp/cache
	      create  tmp/cache/assets
	      create  vendor/assets/javascripts
	      create  vendor/assets/javascripts/.keep
	      create  vendor/assets/stylesheets
	      create  vendor/assets/stylesheets/.keep
	         run  bundle install
	Fetching gem metadata from https://rubygems.org/..........
	Resolving dependencies...
	Using rake 10.3.2
	Using i18n 0.6.11
	Using json 1.8.1
	Using minitest 5.4.1
	Using thread_safe 0.3.4
	Using tzinfo 1.2.2
	Using activesupport 4.1.5
	Using builder 3.2.2
	Using erubis 2.7.0
	Using actionview 4.1.5
	Using rack 1.5.2
	Using rack-test 0.6.2
	Using actionpack 4.1.5
	Using mime-types 1.25.1
	Using polyglot 0.3.5
	Using treetop 1.4.15
	Using mail 2.5.4
	Using actionmailer 4.1.5
	Using activemodel 4.1.5
	Using arel 5.0.1.20140414130214
	Using activerecord 4.1.5
	Using bundler 1.7.2
	Using coffee-script-source 1.8.0
	Using execjs 2.2.1
	Using coffee-script 2.3.0
	Using thor 0.19.1
	Using railties 4.1.5
	Using coffee-rails 4.0.1
	Using hike 1.2.3
	Using multi_json 1.10.1
	Using jbuilder 2.1.3
	Using jquery-rails 3.1.2
	Using tilt 1.4.1
	Using sprockets 2.11.0
	Using sprockets-rails 2.1.4
	Using rails 4.1.5
	Using rdoc 4.1.1
	Using sass 3.2.19
	Using sass-rails 4.0.3
	Using sdoc 0.4.1
	Using spring 1.1.3
	Using sqlite3 1.3.9
	Using turbolinks 2.3.0
	Using uglifier 2.5.3
	Your bundle is complete!
	Use `bundle show [gemname]` to see where a bundled gem is installed.
	         run  bundle exec spring binstub --all
	* bin/rake: spring inserted
	* bin/rails: spring inserted

* Creacion de controlador y paginas estaticas
		cd blog1
		rails generate controller welcome index
		create  app/controllers/welcome_controller.rb
	       route  get 'welcome/index'
	      invoke  erb
	      create    app/views/welcome
	      create    app/views/welcome/index.html.erb
	      invoke  test_unit
	      create    test/controllers/welcome_controller_test.rb
	      invoke  helper
	      create    app/helpers/welcome_helper.rb
	      invoke    test_unit
	      create      test/helpers/welcome_helper_test.rb
	      invoke  assets
	      invoke    coffee
	      create      app/assets/javascripts/welcome.js.coffee
	      invoke    scss
	      create      app/assets/stylesheets/welcome.css.scss

* Modifico el archivo config/routes.rb asi :
		Rails.application.routes.draw do
		    resources :articles
		    root 'welcome#index'
		end

* En una terminal ejecuto :
		rake routes
		  Prefix Verb   URI Pattern                  Controller#Action
	    articles GET    /articles(.:format)          articles#index
	             POST   /articles(.:format)          articles#create
	 new_article GET    /articles/new(.:format)      articles#new
	edit_article GET    /articles/:id/edit(.:format) articles#edit
	     article GET    /articles/:id(.:format)      articles#show
	             PATCH  /articles/:id(.:format)      articles#update
	             PUT    /articles/:id(.:format)      articles#update
	             DELETE /articles/:id(.:format)      articles#destroy
	        root GET    /                            welcome#index

* Creo el controlador articles :
		rails g controller articles
		  create  app/controllers/articles_controller.rb
	      invoke  erb
	      create    app/views/articles
	      invoke  test_unit
	      create    test/controllers/articles_controller_test.rb
	      invoke  helper
	      create    app/helpers/articles_helper.rb
	      invoke    test_unit
	      create      test/helpers/articles_helper_test.rb
	      invoke  assets
	      invoke    coffee
	      create      app/assets/javascripts/articles.js.coffee
	      invoke    scss
	      create      app/assets/stylesheets/articles.css.scss

* Agregar un nuevo archivo en app/views/articles/new.html.erb :
		<h1>Nuevo Articulo</h1>
		<%= form_for :article, url: articles_path do |f| %>
			<p>
			    <%= f.label :title %><br>
			    <%= f.text_field :title %>
			</p>
			 
			<p>
			    <%= f.label :text %><br>
			    <%= f.text_area :text %>
			</p>
			 
			<p>
			    <%= f.submit %>
			</p>
		<% end %>

* Corro en una terminal :
		rake routes
		  Prefix Verb   URI Pattern                  Controller#Action
	    articles GET    /articles(.:format)          articles#index
	             POST   /articles(.:format)          articles#create
	 new_article GET    /articles/new(.:format)      articles#new
	edit_article GET    /articles/:id/edit(.:format) articles#edit
	     article GET    /articles/:id(.:format)      articles#show
	             PATCH  /articles/:id(.:format)      articles#update
	             PUT    /articles/:id(.:format)      articles#update
	             DELETE /articles/:id(.:format)      articles#destroy
	        root GET    /                            welcome#index

* Genero el modelo Article :
		rails generate model Article title:string text:text
			invoke  active_record
	      create    db/migrate/20140910160731_create_articles.rb
	      create    app/models/article.rb
	      invoke    test_unit
	      create      test/models/article_test.rb
	      create      test/fixtures/articles.yml

* Corro la migracion :
		rake db:migrate
		== 20140910160731 CreateArticles: migrating ===================================
		-- create_table(:articles)
		   -> 0.0012s
		== 20140910160731 CreateArticles: migrated (0.0013s) ==========================

* Modifico el metodo create del controlador Articles :
		def create
			@article = Article.new(article_params)
		 
			@article.save
			redirect_to @article
		end
		private
			def article_params
		    	params.require(:article).permit(:title, :text)
			end

* Agrego el metodo show en el controlador Articles :
		def show
		    @article = Article.find(params[:id])
		end

* Creo el archivo app/views/articles/show.html.erb :
		<p>
			<strong>Title:</strong>
			<%= @article.title %>
		</p>
		 
		<p>
			<strong>Text:</strong>
			<%= @article.text %>
		</p>

* Agrego el motodo index en el controlador Articles :
		def index
			@articles = Article.all
		end

* Creo el archivo app/views/articles/index.html.erb :
		<h1>Listing articles</h1>
		<table>
			<tr>
			    <th>Title</th>
			    <th>Text</th>
			</tr>
			 
			<% @articles.each do |article| %>
			<tr>
			    <td><%= article.title %></td>
			    <td><%= article.text %></td>
			</tr>
			<% end %>
		</table>

* Agrego un link en la pagina welcome/index :
		<%= link_to 'My Blog', controller: 'articles' %>

* Agrego un link al final de la pagina articles/index :
		<%= link_to 'New article', new_article_path %>

* Agrego un link al final de la pagina articles/new :
		<%= link_to 'Back', articles_path %>

* Agrego un link al final del archivo articles/show :
		<%= link_to 'Back', articles_path %>

* Agrego validacion dentro del modelo app/model/article.rb :
		class Article < ActiveRecord::Base
			validates :title, presence: true,
	                    	length: { minimum: 5 }
		end
* Agrego información dentro del método new del controlador articles y modificamos el método create :
		def new
			@article = Article.new
		end
		def create
			@article = Article.new(article_params)
	 
			if @article.save
		    	redirect_to @article
			else
		    	render 'new'
			end
		end

* Agrego un codigo dentro del formulario en el archivo app/views/articles/new.html.erb :
	<% if @article.errors.any? %>
    <div id="error_explanation">
    	<h2>
        	<%= pluralize(@article.errors.count, "error") %> prohibited
        	this article from being saved:
    	</h2>
    	<ul>
        <% @article.errors.full_messages.each do |msg| %>
        	<li><%= msg %></li>
        <% end %>
    	</ul>
    </div>
  	<% end %>

* Agrego el metodo edit en el controlador articles :
		def edit
			@article = Article.find(params[:id])
		end

* Creo el archivo app/views/articles/edit.html.erb :
		<h1>Editing article</h1>
		<%= form_for :article, url: article_path(@article), method: :patch do |f| %>
			<% if @article.errors.any? %>
				<div id="error_explanation">
				    <h2>
				        <%= pluralize(@article.errors.count, "error") %> prohibited
				        this article from being saved:
				    </h2>
				    <ul>
				        <% @article.errors.full_messages.each do |msg| %>
				          <li><%= msg %></li>
				        <% end %>
				    </ul>
				</div>
			<% end %>
				 
			<p>
				<%= f.label :title %><br>
				<%= f.text_field :title %>
			</p>
				 
			<p>
				<%= f.label :text %><br>
				<%= f.text_area :text %>
			</p>
				 
			<p>
				<%= f.submit %>
			</p>
				 
		<% end %>
				 
		<%= link_to 'Back', articles_path %>

* Agrego el metodo update en el controlador articles :
		def update
			@article = Article.find(params[:id])
		 
			if @article.update(article_params)
		    	redirect_to @article
			else
		    	render 'edit'
			end
		end

* Modifico la vista app/views/articles/index.html.erb :
		<h1>Listado de articulos</h1>
 
		<table>
		    <tr>
		        <th>Title</th>
		        <th>Text</th>
		        <th colspan="2"></th>
		    </tr>
		 
		    <% @articles.each do |article| %>
		    <tr>
		        <td><%= article.title %></td>
		        <td><%= article.text %></td>
		        <td><%= link_to 'Show', article_path(article) %></td>
		        <td><%= link_to 'Edit', edit_article_path(article) %></td>
		    </tr>
		    <% end %>
		</table>
		<%= link_to 'New article', new_article_path %>

* Agregar el siguiente codigo al final de la vista show :
		| <%= link_to 'Edit', edit_article_path(@article) %>

* Ahora creo un nuevo archivo llamado app/views/articles/_form.html.erb :
		<%= form_for @article do |f| %>
		    <% if @article.errors.any? %>
		    <div id="error_explanation">
		        <h2>
		            <%= pluralize(@article.errors.count, "error") %> prohibited
		            this article from being saved:
		        </h2>
		        <ul>
		            <% @article.errors.full_messages.each do |msg| %>
		                <li><%= msg %></li>
		            <% end %>
		        </ul>
		    </div>
		    <% end %>
		    <p>
		        <%= f.label :title %><br>
		        <%= f.text_field :title %>
		    </p>
		    <p>
		        <%= f.label :text %><br>
		        <%= f.text_area :text %>
		    </p>
		    <p>
		        <%= f.submit %>
		    </p>
		<% end %>

* Ahora modifico las vistas new y edit de articles :
		new:
			<h1>Nuevo Articulo</h1>
			<%= render 'form' %>
			<%= link_to 'Back', articles_path %>
		edit:
			<h1>Edicion de articulo</h1>
	 		<%= render 'form' %>
			<%= link_to 'Back', articles_path %>

* Agrego el metodo destroy en el controlador articles :
		def destroy
			@article = Article.find(params[:id])
			@article.destroy
		 
			redirect_to articles_path
		end

* Modifico el archivo index :
		<h1>Listado de articulos</h1>
	 
		<table>
		    <tr>
		        <th>Title</th>
		        <th>Text</th>
		        <th colspan="3"></th>
		    </tr>
		 
		    <% @articles.each do |article| %>
		    <tr>
		        <td><%= article.title %></td>
		        <td><%= article.text %></td>
		        <td><%= link_to 'Show', article_path(article) %></td>
		        <td><%= link_to 'Edit', edit_article_path(article) %></td>
		        <td><%= link_to 'Destroy', article_path(article),
		              method: :delete,
		              data: { confirm: 'Are you sure?' } %></td>
		    </tr>
		    <% end %>
		</table>
		<%= link_to 'New article', new_article_path %>

* Inicio un repositorio git :
		git init
		git mv README.rdoc README.md
		git add .
		git commit -m "Primer confirmacion"
		git remote add origin https://github.com/rick25/blog1.git
		git push origin master
		git checkout -b nuevo-modelo

* Ya en la nueva rama de git agrego un nuevo modelo :
		rails generate model Comment commenter:string body:text article:references
		  invoke  	  active_record
	      create      db/migrate/20140911131326_create_comments.rb
	      create      app/models/comment.rb
	      invoke      test_unit
	      create      test/models/comment_test.rb
	      create      test/fixtures/comments.yml

* Corro la migracion :
		rake db:migrate
		== 20140911131326 CreateComments: migrating ===================================
		-- create_table(:comments)
		   -> 0.0036s
		== 20140911131326 CreateComments: migrated (0.0037s) ==========================

* Para relacionar ambos modelos modifico el archivo app/models/article.rb asi :
		class Article < ActiveRecord::Base
			has_many :comments				#cada articulo tiene varios comments
			validates :title, presence: true,
			                   length: { minimum: 5 }
		end

* Con lo anterior hecho si en algun momento tengo una variable @article conteniendo la informacion de un article, podria ademas tener un arreglo con todos sus comentarios con @article.comments.

* Agrego una ruta para los comments, modificando el archivo config/routes.rb asi :
		Rails.application.routes.draw do
		    resources :articles do		#con esto creo los comments como un recurso anidado de los articles
		    	resources :comments
		    end
		    root 'welcome#index'
		end

* Genero un controlador llamado Comments :
		rails generate controller Comments
		  create  app/controllers/comments_controller.rb
	      invoke  erb
	      create    app/views/comments
	      invoke  test_unit
	      create    test/controllers/comments_controller_test.rb
	      invoke  helper
	      create    app/helpers/comments_helper.rb
	      invoke    test_unit
	      create      test/helpers/comments_helper_test.rb
	      invoke  assets
	      invoke    coffee
	      create      app/assets/javascripts/comments.js.coffee
	      invoke    scss
	      create      app/assets/stylesheets/comments.css.scss

* Modifico el archivo app/views/articles/show.html.erb para que el usuario pueda hacer un comentario lluego de ver un articulo asi :
		<p>
			<strong>Title:</strong>
			<%= @article.title %>
		</p>
		<p>
			<strong>Text:</strong>
			<%= @article.text %>
		</p>
		<h2>Add a comment:</h2>
		<%= form_for([@article, @article.comments.build]) do |f| %>
		  	<p>
		    	<%= f.label :commenter %><br>
		    	<%= f.text_field :commenter %>
		  	</p>
		  	<p>
		    	<%= f.label :body %><br>
		    	<%= f.text_area :body %>
		  	</p>
		  	<p>
		    	<%= f.submit %>
		  	</p>
		<% end %>
		<%= link_to 'Back', articles_path %> | <%= link_to 'Edit', edit_article_path(@article) %>

* Ahora modificamos el controlador comments asi :
		class CommentsController < ApplicationController
			def create
		    	@article = Article.find(params[:article_id])			#se busca el articulo por el article_id
		    	@comment = @article.comments.create(comment_params)		#se crea el comentario usando el articulo encontrado
		    	redirect_to article_path(@article)						#se redirige a
		  	end
		 
		  	private
		    	def comment_params
		      		params.require(:comment).permit(:commenter, :body)
		    	end
		end

* Agrego a la vista articles/show.html.erb lo siguiente :
		<h2>Comments</h2>
		<% @article.comments.each do |comment| %>
		    <p>
		        <strong>Commenter:</strong>
		        <%= comment.commenter %>
		    </p>
		 
		    <p>
		        <strong>Comment:</strong>
		        <%= comment.body %>
		    </p>
		<% end %>

* Para limpiar la vista show.html.erb creo el archivo app/views/comments/_comment.html.erb :
		<p>
		    <strong>Commenter:</strong>
		    <%= comment.commenter %>
		</p>
		 
		<p>
		    <strong>Comment:</strong>
		    <%= comment.body %>
		</p>
* Tambien creo el archivo app/views/comments/_form.html.erb :
		<%= form_for([@article, @article.comments.build]) do |f| %>
		  	<p>
		    	<%= f.label :commenter %><br>
		    	<%= f.text_field :commenter %>
		  	</p>
		  	<p>
		    	<%= f.label :body %><br>
		    	<%= f.text_area :body %>
		  	</p>
		  	<p>
		    	<%= f.submit %>
		  	</p>
		<% end %>
* Y Modifico la vista show asi :
		<p>
			<strong>Title:</strong>
			<%= @article.title %>
		</p>
		<p>
			<strong>Text:</strong>
			<%= @article.text %>
		</p>

		<h2>Comments</h2>
		<% @article.comments.each do |comment| %>
		    <%= render @article.comments %>
		<% end %>

		<h2>Add a comment:</h2>
		<%= render 'comments/form' %>
		<%= link_to 'Back', articles_path %> | <%= link_to 'Edit', edit_article_path(@article) %>

* Agrego un enlace en el archivo comments/_comment.html.erb asi :
		<p>
		    <strong>Commenter:</strong>
		    <%= comment.commenter %>
		</p>
		<p>
		    <strong>Comment:</strong>
		    <%= comment.body %>
		</p>
		<p>
		  	<%= link_to 'Destroy Comment', [comment.article, comment],
		               method: :delete,
		               data: { confirm: 'Are you sure?' } %>
		</p>

* Añadimos el metodo destroy en el controlador comments para poder eliminar comentarios inadecuados :
		def destroy
		    @article = Article.find(params[:article_id])			#se busca el comentario por el id
		    @comment = @article.comments.find(params[:id])			#se busca el comentario con el id de comentario
		    @comment.destroy										#se elimina de la base de datos
		    redirect_to article_path(@article)
		end

* Modificamos el archivo app/models/article.erb para que se eliminen los comentarios relacionados si se elimina un articulo asi :
		class Article < ActiveRecord::Base
			has_many :comments, dependent: :destroy				#cada articulo tiene varios comments
			validates :title, presence: true,
			                   length: { minimum: 5 }
		end

* Añadimos una autenticacion basica provista por rails, para eso agrego al inicio del controlador articles para que el usuario que no este autenticado no pueda usar los metodos, excepto el index y el show asi :
		http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

* Ademas en el controlador comments queremos que solo los usuarios autenticados puedan borrar comentarios, para eso agrego al inicio del controlador lo siguiente :
		http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

* Luego de ver que toda la aplicacion anda como esperamos vamos a pasarlo a github, para eso hacemos :
		git status
		