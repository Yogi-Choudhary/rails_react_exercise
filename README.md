# README

**Ruby Vesion:- 3.2.2**
**Rails Vesion:- 7.1.3**
**Node Vesion:- 18.19.0** 

# Step 1. Create a Rails application
* In Ruby on Rails, the process of creating a new application starts with the new command in your terminal:
	**rails new rails_react_exercise -d postgresql -j esbuild -c bootstrap -T**

	* There are two actions this command performs. First, it places your application in the rails_react_exercise root directory where you can find all files associated with your project. Second, it allows to automatically create Ruby and JavaScript dependencies needed for accelerated website development; and it configures Webpack, the JavaScript bundler.

	* There are four flags that come with the new command: the -d, -j, -c, and -t. They help to customize the set of the initialization process. For example, the -d flag points out the preferred database engine, while the -j flag specifies esbuild as the preferred bundler.

# Step 2. Connect your application to a database

* After you create a Rails project, it needs to be connected to a database. This Ruby on Rails React tutorial focuses on the PostgreSQL database where you store the user intent data.

* The good thing about Rails is that it provides commands to accelerate the web development process and manage the database schema with the **create, drop, and reset** commands.

* The process of creating a database is straightforward. **Run the rails db:create** command to create a development and test database.


* Start your application with the **bin/dev** command; you should have the following output on your screen:


	11:16:58 web.1  | started with pid 251636
	11:16:58 js.1   | started with pid 251637
	11:16:58 css.1  | started with pid 251638
	11:16:58 js.1   | yarn run v1.22.22
	11:16:58 js.1   | $ esbuild app/javascript/*.* --bundle --sourcemap --format=esm --outdir=app/assets/builds --public-path=/assets --watch
	11:16:58 css.1  | yarn run v1.22.22
	11:16:58 css.1  | $ nodemon --watch ./app/assets/stylesheets/ --ext scss --exec "yarn build:css"
	11:16:58 js.1   | [watch] build finished, watching for changes...
	11:16:59 css.1  | [nodemon] 3.1.1
	11:16:59 css.1  | [nodemon] to restart at any time, enter `rs`
	11:16:59 css.1  | [nodemon] watching path(s): app/assets/stylesheets/**/*
	11:16:59 css.1  | [nodemon] watching extensions: scss
	11:16:59 css.1  | [nodemon] starting `yarn build:css`
	11:16:59 web.1  | DEBUGGER: Debugger can attach via UNIX domain socket (/run/user/1000/rdbg-251636)
	11:16:59 web.1  | => Booting Puma
	11:16:59 web.1  | => Rails 7.1.3.3 application starting in development 
	11:16:59 web.1  | => Run `bin/rails server --help` for more startup options
	11:16:59 css.1  | $ yarn build:css:compile && yarn build:css:prefix
	11:16:59 web.1  | Puma starting in single mode...
	11:16:59 web.1  | * Puma version: 6.4.2 (ruby 3.2.2-p53) ("The Eagle of Durango")
	11:16:59 web.1  | *  Min threads: 5
	11:16:59 web.1  | *  Max threads: 5
	11:16:59 web.1  | *  Environment: development
	11:16:59 web.1  | *          PID: 251636
	11:16:59 web.1  | * Listening on http://127.0.0.1:3000
	11:16:59 web.1  | * Listening on http://[::1]:3000
	11:16:59 web.1  | Use Ctrl-C to stop
	11:16:59 css.1  | $ sass ./app/assets/stylesheets/application.bootstrap.scss:./app/assets/builds/application.css --no-source-map --load-path=node_modules
	11:17:03 css.1  | $ postcss ./app/assets/builds/application.css --use=autoprefixer --output=./app/assets/builds/application.css
	11:17:04 css.1  | [nodemon] clean exit - waiting for changes before restart**


# Step 3. Install React Frontend dependencies

* To set them up, use the **$ yarn add react react-dom react-router-dom** command with the Yarn package manager. You can find installed dependencies in the package.json file.


* In order to see the list of installed packages, check them under the dependencies:

	{
	  "name": "app",
	  "private": true,
	  "dependencies": {
	    "@hotwired/stimulus": "^3.2.2",
	    "@hotwired/turbo-rails": "^8.0.4",
	    "@popperjs/core": "^2.11.8",
	    "autoprefixer": "^10.4.19",
	    "bootstrap": "^5.3.3",
	    "bootstrap-icons": "^1.11.3",
	    "esbuild": "^0.21.4",
	    "nodemon": "^3.1.1",
	    "postcss": "^8.4.38",
	    "postcss-cli": "^11.0.0",
	    "react": "^18.3.1",
	    "react-dom": "^18.3.1",
	    "react-router-dom": "^6.23.1",
	    "sass": "^1.77.2"
	  },
	  "scripts": {
	    "build": "esbuild app/javascript/*.* --bundle --sourcemap --format=esm --outdir=app/assets/builds --public-path=/assets",
	    "build:css:compile": "sass ./app/assets/stylesheets/application.bootstrap.scss:./app/assets/builds/application.css --no-source-map --load-path=node_modules",
	    "build:css:prefix": "postcss ./app/assets/builds/application.css --use=autoprefixer --output=./app/assets/builds/application.css",
	    "build:css": "yarn build:css:compile && yarn build:css:prefix",
	    "watch:css": "nodemon --watch ./app/assets/stylesheets/ --ext scss --exec \"yarn build:css\""
	  },
	  "browserslist": [
	    "defaults"
	  ]
	}

# Step 4. Create the Homepage
  * The next step is to create a homepage where users land when they open application.
  **rails g controller Homepage index**



# Step 5. Configure React as your Rails Frontend

  * With React being on the frontend part of your app, you can excel at creating a dynamic and interactive homepage.

  * While most of the settings for seamless work between React and Rails are in place, you need to configure the esbuild entry point for JavaScript files.

  * To do this, create a components directory in the app/javascript directory — it’s where components for the entire application will be housed, including the entry file.

  * Run this command:

  **$ mkdir ~/rails_react_exercise/app/javascript/component**

  * Then, open the application.js file

  * Add **import "./components"** to the last row of your command preview.

  * With the directory imported into the entry point, now you can proceed to create a component for the homepage that will have content and a CTA button to view all exercises.

  * For that, create a Home.jsx file in the components directory to extend JavaScript code:

  **$vim ~/rails_react_exercise/app/javascript/components/Home.jsx**

  * Now it’s time to create the routes directory. It has corresponding components, which are rendered to a browser when a route is loaded. 

  * Run this command:

  **$mkdir ~/rails_react_exercise/app/javascript/routes**

  * Then, create an index.jsx file:

  **$vim ~/rails_react_exercise/app/javascript/routes/index.jsx**

  * Now that you have these modules, you can set up routing using React Router. For that, create an App.jsx file in the **app/javascript/components** directory:

  **$vim ~/rails_react_exercise/app/javascript/components/App.jsx**

  

