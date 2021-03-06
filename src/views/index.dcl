.index-view
  header
    h1 Declaire.js
    h2 A declarative, full stack Web Application Framework
    //- a.cta(href="#install") Get Started
    
  article#features
    ul.features
      li
        h3 Full Stack
        p+
          Declaire.js allows you to write a <b>single</b> web application that runs on both
          client and server.
        p+
          Pages are first generated in a streaming fashion on the server
          - for <b>short time to first byte</b> and <b>easy SEO</b> - and get rehydrated on the client
          afterwards, using the same codebase.
        p+
          Declaire brings its own <b>templating language</b>, with a compact, 
          <a href="http://jade-lang.com" target="_blank">Jade</a>-inspired syntax and a
          robust set of logic blocks for structuring your markup.
        p+
          <b>RESTfull resources</b> get served for your models automatically, without the need to write
          additional code. Just define a data model, create instances and you're good to go.
        p+
          Stylesheets written in
          <a href="http://learnboost.github.io/stylus/" target="_blank">Stylus</a> /
          <a href="http://tj.github.io/nib/" target="_blank">Nib</a>
          are compiled and <b>served automatically</b> for you.
      
      li
        h3 Declarative
        p+
          The template is the highest authority in a Declaire application and manages most
          application state for you.
        p+
          ViewModels get instantiated and deleted by the template engine
          as neccessary when data changes, freeing you from having to
          <b>manage memory</b> and <b>event handlers</b> yourself.
        p+
          Writing application code in this declarative way minimizes overhead and prevents many
          common <b>programming mistakes</b>.
      
      li
        h3 Auto Bindings
        p+
          Watch the <b>DOM magically update</b> as your model data changes. No matter if those changes
          resulted from your own actions or from updates to the database.
      
      li
        h3 Computed Properties
        p+
          Computed properties are like regular model methods, except that they also emit change
          events when one of the properties they <b>depend on</b> changes. This allow you to hook up
          complex logic to templates in a completely <b>declarative way</b>.
        p+
          <b>Dependency tracking</b> happens automatically, without the need to declare these
          relationships ahead of time.
      
      li
        h3 Realtime Sync
        p+
          Model state is kept current with the remote database at all times <b>automatically</b>.
        p+
          Declaire does this in a <b>scalable fashion</b>, without the need for an additional PubSub
          server like  <a href="http://redis.io" target="_blank">Redis</a>. A single 
          <a href="http://mongodb.org" target="_blank">MongoDB</a> connection is sufficient for
          all data storage and synchronization needs.
      
      li
        h3 Offline First
        p+
          All Declaire applications work <b>offline by default</b>.
          Data changes are kept in local browser storage when offline and get synced back to
          the server later, when <b>connectivity</b> is available again.

      li
        h3 Streaming Server
        p+
          When templates get first rendered on the server, Declaire utilises 
          <a href="http://nodejs.org" target="_blank">Node.js</a>'
          streaming technology to transmit the first few bytes as soon as possible. Browsers can
          already <b>display content</b> and start downloading additional resources, while the database
          is still returning data.
      
      li
        h3 Based on trusted Technology
        p+
          Declaire runs on 
          <a href="http://nodejs.org" target="_blank">Node.js</a>
          and uses 
          <a href="http://expressjs.com" target="_blank">Express</a>
          internally to serve requests.
          Data is stored in a 
          <a href="http://mongodb.org" target="_blank">MongoDB</a>
          instance, and code is packaged using 
          <a href="http://browserify.org" target="_blank">Browserify</a>.
        p+
          The express app, as well as the connected database instance are <b>exposed</b> to interested
          applications just before listening for requests.
          This allows you to hook up <b>legacy code</b> or load additional 
          <a href="http://expressjs.com/resources/middleware.html" target="_blank">express middleware</a>
          and make changes to the database before serving requests.

      li
        h3 Scalable
        p+
          Declaire scales from <b>simple</b> websites and <b>prototypes</b> to <b>complex</b> web applications.
        p+
          Because of its full-stack, <b>zero-config</b> nature, applications are quickly
          set up and running.
        p+
          Because of its declarative logic, flexible components and <b>CommonJS</b> module system, Declaire
          also keeps more complex applications <b>maintainable</b> and performant.
        p+
          Declaire also <b>scales horizontally</b> and runs on an arbitrary number of Node instances.
          Both session and push management are realized in a scalable fashion.

      li
        //- h3 Decidedly Web
        h3 ❤ ing the Web
        p+
          In the transition from server generated pages to single-page applications, I believe some
          <b>values of the web</b> have been lost in translation.
        p+
          Pages often only contain a small fragment of
          <b>container HTML</b> and generate everything else using javascript.<br>
          Some frameworks these days
          even go as far as bypassing the <b>HTTP</b> protocol completely and transmit everything over websockets.
        p+
          This is not only problematic for <b>search engines</b> and comparatively slow when it comes to
          time to <b>first impression</b>, but also opposes the idea of <b>semantic HTML</b> somewhat,
          by relying on a 'semantic DOM' that only high-powered, Javascript-savy browser engines
          can still consume, instead of, say, a simple shell script.
        p+
          Declaire therefore delivers:
        ul.list
          li <b>Full HTML</b> source for every page, instead of just a few script tags.
          li Data over standard <b>REST/JSON</b>.
          li Push updates using Server-Sent-Events over <b>standard HTTP</b> instead of websockets.

  nav.side-bar
    header Contents
    ul
      li > a(href="#install") Installation
      //- li > a(href="#get-started") Get Started
      li
        a(href="#structure") Project Structure
        ul
          li > a(href="#structure-models") Organizing Models
          li > a(href="#structure-modules") Installing Modules
      li
        a(href="#templating") Templating
        ul
          li > a(href="#comments") Comments
          li > a(href="#tags") Basic HTML Tags
          li
            a(href="#bindings") Bindings
            ul
              li > a(href="#bindings-class") Binding CSS Classes
              li > a(href="#bindings-two-way") Two-way Bindings
          li > a(href="#text") Text
          li > a(href="#scope") Scope
          li
            a(href="#statements") Statements
            //- ul
            //-   li > a(href="#statements-if") if
            //-   li > a(href="#statements-for") for
            //-   li > a(href="#statements-view") views
            //-   li > a(href="#statements-on") on
            //-   li > a(href="#statements-import") import
            //-   li > a(href="#statements-content") content
            //-   li > a(href="#statements-route") route
            //-   li > a(href="#statements-as") as
            //-   li > a(href="#statements-switch") switch
            //-   li > a(href="#statements-client") client
      li
        a(href="#data-models") Data Models
        ul
          li > a(href="#events") Events
          li > a(href="#computed-properties") Computed Properties
          li > a(href="#realtime") Realtime Updates
          li > a(href="#relations") Relations
          li > a(href="#model-offline") Local Storage
          //- li > a(href="#model-history") History & Rollback
      li > a(href="#view-models") View Models
      li > a(href="#collections") Collections
      li
        a(href="#queries") Queries
        ul
          li > a(href="#queries-syntax") Query Syntax
      li > a(href="#main-model") Main Model
      li
        a(href="#routing") Routing
        ul
          li > a(href="#routing-navigation") Navigation
      li > a(href="#offline") Offline Support
      //- li > a(href="#client-only") Client/Server-only Code
      //- li > a(href="#service-models") Service Models
      li > a(href="#utils") Utility Functions
      li > a(href="#stylesheets") Stylesheets
      li
        a(href="#deployment") Deployment
        //- ul
        //-   li > a(href="#mongodb") MongoDB
        //-   li > a(href="#heroku") Heroku

  section.main-content

    article#install
      h2 Install Declaire
      p+
        Install Declaire into any <a href="http://nodejs.org" target="_blank">Node</a> application using 
        <a href="http://npmjs.com" target="_blank">npm</a>.
      pre(data-filename="Shell")
        code.javascript+
          $ cd my-app
          $ npm install declaire --save
      //-
    
    article#get-started
      h2 Get Started (with a nice and easy Todos app)
      p+
        To start building a simple Todos app, create an application file, load Declaire,
        define your data and view models and finally start the framework.
      //- This will make the application listen for requests on the server and for events in the browser.
      pre(data-filename="app.js")
        code.javascript+
          var declaire = require('declaire');
          
          var app = declaire.Application({
            mongoDevUrl: 'mongodb://127.0.0.1:27017/todos'
          });
          
          var Todo = app.Model('todos', {
            title: 'Untitled Todo',
            done: false
          });
          
          app.ViewModel('TodosView', {
            todos: Todo.all(),
            activeTodos: Todo.filter({done: false}),
          
            newTodo: function(e, input) {
              Todo.create({title: input.value}).save();
              input.value = '';
            }
          });
          
          app.init(function(start) {
            start();
          });
      p+
        Next, create your main layout template in the <b>/src/views</b> folder.
        Declaire will wrap it with an HTML tag automatically if you omit it.
      pre(data-filename="src/views/layout.dcl")
        code.handlebars+
          head
            title Todos
            link(href="/stylesheets/main.css" rel="stylesheet")
          body
            {{view TodosView}}
              header
                h1 Todos
              main
                form({{on submit newTodo(input)}})
                  input(type="text" placeholder="What's next?" required {{as input}})
                  button Create Todo
                ul.todos
                  {{for todos}}
                    li(class="{completed: done}")
                      label
                        input(type="checkbox" checked="{done!!}")
                        h2 {title}
                      button({{on click delete}}) Delete
              {{if activeTodos.length}}
                footer {activeTodos.length} / {todos.length} items left to do
      //- li.{completed: done}
      //- input(type="checkbox" checked={done!!})
      p+
        Finally, make sure you have a
        <a href="http://mongodb.org" target="_blank">MongoDB</a>
        instance running on your local machine and run your
        application with
        <a href="http://nodejs.org" target="_blank">Node</a>
        like you always have. Enjoy!
      pre(data-filename="Shell")
        code.javascript+
          $ node app.js
      p+
        For a more complete example with additional features and a detailed explanation
        of how the application works, see the 
        <a href="/pages/examples">examples</a>
         page!

    article#structure
      h2 Structuring your Code
      p+
        Node.js uses the CommonJS standard for the definition and import of modules.
        Your Declaire app will use it too, because it must be able to run on
        the server as well. Declaire will package and serve your code using
        <a href="http://browserify.org" target="_blank"> Browserify </a>
        for usage in the browser.
      p To include another source file, just do as you're used to with Node.
      pre(data-filename="app.js")
        code.javascript+
          var myModule = require('./src/myModule.js');
      p  Your directory structure should look like follows by default:
      pre(data-filename="fs")
        code.javascript+
          /app.
          .gitignore
            /public
              favicon.png
            /src
              /views
                layout.tmpl
            /stylesheets
              main.styl
            app.js
            package.json
      p The public folder should contain your static assets and will get served automatically.

      section#structure-models
        h3 Organizing Models and View Models
        p+
          You can put your source files anywhere you like, but the <b>src</b> folder is a good idea.
          When you declare models or view models in your external files, you don't have access
          to your application object to aid in defining these. Instead, use the methods of the
          same name on the main declaire module.
        pre(data-filename="src/models/todo.js")
          code.javascript+
            var declaire = require('declaire');
            
            module.exports = declaire.Model('todos', {
              title: 'Untitled Todo',
              done: false
            });
        p+
          You can then call the application's use method to register your external models with
          your application:
        pre(data-filename="app.js")
          code.javascript+
            var Todo = app.use(require('./src/models/todo.js'));
            app.use(require('./src/views/MyView.js'));
        p Make sure all your models are registered before calling app.<b>init</b>()!
      
      section#structure-modules
        h3 Installing and Loading NPM Modules
        p+
          Install modules using  <a href="http://npmjs.com" target="_blank">npm</a>. These will get packaged and
          delivered with your app bundle automatically. Require as usual.
        pre(data-filename="Shell")
          code.javascript+
            $ npm install jquery --save
        pre(data-filename="app.js")
          code.javascript+
            var $ = require('jquery');
        p+
          If you want to use a specific module only on the client or the server,
          require the module inside a conditional. Server-only code will be optimized away from
          the served app bundle automatically.
        pre(data-filename="app.js")
          code.javascript+
            if(declaire.onServer()) {
              var NewRelic = require('newrelic');
            }
        //-

    article#startup
      h2 Application Startup
      p+
        The Application constructor takes a hash of options that control your app's behaviour, like the
        database to connect to or the base URL of your pages. These cannot be changed after an Application
        has been created.
      p+
        The <b>init</b> method represents the initialization phase of the framework on the client as well
        as on the server. The callback that you pass will be called when Declaire is completely initialized,
        but before listening to requests on the server and before listening to events on the client.
        The <b>start</b> function passed will finally make that happen once you're finished with your
        own setup.
      pre(data-filename="app.js")
        code.javascript+
          var declaire = require('declaire');
          // Make Declaire's utility functions easily accessible
          var _ = declaire.Utils;
          
          // Create an Application object
          var app = declaire.Application({
            // Mongo URL to use when expressapp.get('env') == 'development'
            mongoDevUrl: 'mongodb://127.0.0.1:27017/todos',
            // Production database
            mongoUrl: process.env.MONGO_URL,
            // NPM folders to host along with other static assets
            npmPublic: ['font-awesome'],
            // Base URL below which the router will expect HTML pages
            baseUrl: '/pages',
            // The base URL of the generated REST API
            apiUrl: '/api'
          });

          // Declare all models used
          // ..Data Models
          var Todo = app.use(require('./src/models/todo.js'));
          
          // ..View Models
          app.use(require('./src/views/MyView.js'));

          // Initialize the framework
          app.init(function(start, express, db) {

            // On the server
            if(_.onServer()) {

              // We can still make changes to the database..
              db.collection('todos').createIndex({done: 1});
              
              // ..or create a server-side route using express
              express.get('/ping', function(req, res) {
                res.send('pong');
              });
              
              // Call <start> when you're done
              start(function() {
                // The server is now accepting requests
              });
            
            // On the client
            } else {
              // The main model is initialized
              start(function() {
                // The page has been completely replaced with a client-side version,
                // anchors have been hijacked and the router is running
              });
            }
          });
      //-
    article#templating
      h2 Templating
      p+
        Declaire's templating language borrows syntax heavily from 
        <a href="http://jade-lang.com" target="_blank">Jade</a> and
        <a href="http://handlebarsjs.com" target="_blank">Handlebars</a>, takes the streaming execution model from
        <a href="https://github.com/raptorjs/marko" target="_blank">Marko</a>
        and hooks natively into Declaire's models.
      p+
        Hierachy is denoted through indentation, interpolation uses curlies, statements use double
        curlies and most other syntax adheres to HTML and CSS alot.
      p+
        Declaire uses a different evaluator on the client than on the server,
        to process the exact same parse tree.
      p+
        The client evaluator operates directly on the DOM and creates, modifies and removes elements as neccessary
        when data in your models changes.
      p+
        The server evaluator generates ordinary html source from the same parse tree and data. It
        does so in a fashion that minimizes time to first byte, by streaming rendered chunks of markup
        to the client already, while it's still waiting for the database to return  further data.
        The asynchronous resolution of data in the view models is also taken into account and
        the generated html is streamed in the correct order.

      section#comments
        h3 Comments
        p+
          Comments begin with <b>//</b> and extend to the end of the line.
        pre(data-filename="src/views/layout.dcl")
          code.javascript+
            // This will NOT end up in your generated markup
        //-
      
      section#tags
        h3 Basic HTML Tags
        p+
          Use the <b>#</b> character to give elements an Id, apply classes using <b>.</b> and
          set attributes in parentheses using the regular html notation. Text may follow on the
          same line, or other tags may be indented below.
          <br>
          When an id or class is used, divs may have the tag name omited, as divs are the default.
        pre(data-filename="src/views/layout.dcl")
          code.javascript+
            // Simple div with a class and some text
            div.box Hello
            
            // The same
            .box Hello
            
            // Nest tags through indentation
            nav
              ul.items
                li
                  a(href="#") Item1
            
            // Make this a little shorter for elements with a single child
            nav > ul.items
              li > a(href="#") Item1
            
            // Input with an id and several classes and attributes
            input#my-id.foo.bar(type="checkbox" checked)
        //-
      section#bindings
        h3 Bindings
        p+
          Any value available in the surrounding scope can be interpolated at any practical point
          in a template using a pair of <b>curlies</b>. When the value later changes, the <b>DOM will update</b>
          accordingly. This also works for attributes.
          <br>
          When a path returns null or undefined, the engine will silently render nothing.
        pre(data-filename="src/views/layout.dcl")
          code.handlebars+
            h2 {title}
            input(type="text" value="{title}")
        p+
          By default, text gets escaped before being inserted into the page, to prevent <b>injection attacks</b>.
          If you precede the curlies with an exclamation mark though, you can insert unescaped text.
          Use this at your own risk!
        .note Unescape is not implemented yet
        pre(data-filename="src/views/layout.dcl")
          code.handlebars+
            h2 !{title}
        p+
          For boolean attributes like <b>checked</b> or <b>selected</b>, the value of the given expression
          will determine if the attribute is set.
        pre(data-filename="src/views/layout.dcl")
          code.handlebars+
            input(type="checkbox" checked="{done}")

            select(name="food")
              option(value="fruits" selected="{selectedFood == 'fruits'}") Fruits
        //- Special case for selected: compare value automatically
        //- OR
        //- option(value="fruits" selected={selectedFood == <value>}) Fruits
        //- OR
        //- select({{selected selectedFood}})
        section#bindings-class
          h4 Binding CSS Classes
          p+
            As setting several classes dynamically is a very common operation, a special syntax exists just for doing that:
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              li.item(class="{big: obj.isImportant, translucent: obj.status == 'waiting'}")
          //- li.{completed: done}
          p+
            Note that the <b>li</b> element will still always get the <b>.item</b> class in addition to the dynamically
            determined classes.
        section#bindings-two-way
          h4 Two-way Bindings
          p+
            Using an exclamation mark at the end of a path in an attribute binding will create a two-way binding,
            meaning that the input will also drive the connected model property when the user makes changes.
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              input(type="checkbox" checked="{done!}")
          p+
            Use another exclamation mark to not only set the model property, but also save it to the server.
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              input(type="checkbox" checked="{done!!}")
          p+
            Adding a colon before the binding path will interpolate the value only once and not update
            upon data changes. This is useful for prefilling inputs in a dialog that you do not want
            to change upon remote changes.
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              form.dialog
                input(type="text" value={:title!})
                input(type="checkbox" checked={:done!})
                footer
                  button({{on click save}}) Ok
          //- 
      
      section#text
        h3 Text
        p+
          When your text doesn't fit on a single line anymore, you can end a tag definition with a '+' character
          and indent the following lines below. Text may also contain regular html tags.
        pre(data-filename="src/views/layout.dcl")
          code.handlebars+
            p+
              Lorem ipsum dolor sit amet
              Lorem ipsum <b>dolor</b> sit amet
        p+
          Alternatively, you may insert text anywhere you would insert a regular tag, by preceding it
          with the <b>|</b> character. This allows you to still insert intermediate tags using the regular
          syntax. 
        pre(data-filename="src/views/layout.dcl")
          code.handlebars+
            p
              | Lorem ipsum
              a(href="#") dolor 
              | sit amet

      section#scope
        h3 Scope
        p+
          The scope controls what data is visible at any given point in a template.
        p+
          When you use a path in a template, that path is looked up in the scope. Imagine the scope
          as a stack of objects, some of them models, some of them regular objects that contain variable
          names, pointing to models.
          Declaire searches for the first path segment upward in the stack, until it finds a variable
          or model property that matches and retrieves it using <b>get</b>.
        p+
          All subsequent path segment are now basically syntax sugar for calling <b>get</b> again on the previous
          object until we hit a base type that can be interpolated into the page.
        p+
          The scope at least contains the 
          <a href="#main-model">main model</a>,
          which Declaire inserts automatically.
          New variable names and models get introduced to the scope by control statements like
          <a href="#statements-for">for</a>, <a href="#statements-as">as</a>
          and <a href="#statements-view">view</a>.

      section#statements
        h3 Statements
        p+
          Several statements are available in templates to control the generated markup in response
          to changes to its underlying data, accessible using their respective keywords in double curlies.
        section#statements-if
          h4 if
          p+
            The if statement renders nested markup only if a condition is met.<br>
            Expressions may contain model properties within the scope, as well as basic literals,
            together with a fixed set of comparison operators. Inversion works too.
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              {{if person.name == 'Peter'}}
                strong You are the winner today!
              
              {{if !_online}}
                dialog Waiting for connection ...
          p+
            One or several alternatives can be declared as well.
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              {{if path}}
                p Path is truthy
              {{=>}}
                p Path is falsy
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              {{if value > 0}}
                .green Positive
              {{=> value == 0}}
                div Zero
              {{=>}}
                // Default
                .red Negative
        section#statements-for
          h4 for
          p+
            Use the for-statement to iterate through collections and produce output for
            every item. When items get added to or removed from the collection later, the template
            engine will update affected parts of the DOM, but leave other elements intact.
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              ul
                {{for todo in todos}}
                  li {todo.title}
          p+
            You can also use the short form, which will insert each item directly into the scope,
            making its properties visible from that point downward in the template.
            Note that these may shadow properties or variables of the same name, higher in
            the scope. These can then no longer be reached.
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              ul
                {{for todos}}
                  li {title}
        section#statements-view
          h4 view
          p+
            The view statement instantiates a view model and puts it into the scope. Properties and methods
            of the view model instance are subsequently visible in the scope.
          p+
            Once a view is no longer needed, perhaps because its item was removed from a collection,
            or because a parent element got updated, Declaire will remove the associated view model object
            automatically, causing it to fire its <a href="#view-models">remove</a> event.
          p+
            Optionally, the created view model instance can be given a name by which it will be accessible
            in the scope. If you leave that out, the model itself will be inserted into the scope.
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              {{view MyViewModel as myView}}
                h1 {myView.title}
              {{view MyViewModel}}
                h1 {title}
          .note Exposing view models by name is not implemented yet
          p+
            If you need to fetch data from the database to render the view, it is good practice to supply
            an alternate piece of markup to render, should the application be offline and not find
            the neccessary data in local storage.
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              {{view MyViewModel}}
                h1 {author.name}
              {{=>}}
                h1 You are not connected to the internet
                h2 This view will render automatically once connectivity returns
          p+
            Any value accessible from the scope can be passed as an argument to the view model constructor.
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              {{for todo in todos}}
                {{view TodoView(todo)}}
                  h1 {headline}
          pre(data-filename="app.js")
            code.javascript+
              declaire.ViewModel('TodoView', {
                headline: function() {
                  return _.capitalize(this.get('myTodo').get('title'));
                }
              }, function(todo) {
                this.set('myTodo', todo);
              });
          //- 

        section#statements-on
          h4 on
          p+
            When the user generates events by interacting with the page, your application can react
            using the on-statement. It takes the name of an event on the element and a method to
            look up in the scope as arguments.
          p The method will get passed the event object as well as any parameters given as arguments.
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              {{view MyView}}
                input(type="text" {{on keyup method("Some argument")}})
          pre(data-filename="app.js")
            code.javascript+
              declaire.ViewModel('MyView', {
                method: function(e, someArgument) {
                  console.log(e.target.value);
                }
              });
          p+
            In addition to the regular DOM-events, Declaire allows you to use several virtual events,
            that make common interactions easier to write:
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              input(type="text" {{on enter doIt}} {{on escape cancel}})
              h2({{on doubleClick rename}})
          //-

        section#statements-import
          h4 import
          p+
            Declaire uses a simple way to combine templates that also serves to build
            <b>reusable components</b>:
            Use the import statement to import another template in the surrounding template.
          pre(data-filename="src/views/myTemplate.dcl")
            code.handlebars+
              h1 Import me!
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              {{import myTemplate}}
          p+
            You can pass <b>named parameters</b> to the imported template which are then available
            in its scope. 
          pre(data-filename="src/views/animal.dcl")
            code.handlebars+
              .creature
                .name {name}
                .species {species}
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              {{import animal(name: 'Lisa', species: 'Dog')}}
              {{import animal(name: 'Herbert', species: 'Cat')}}
          p+
            Templates always get a <b>clean scope</b> that contains only the main model and the parameters
            passed. They don't inherit the calling scope.

        section#statements-content
          h4 content
          p+
            You can nest additional markup under an import statement. This can then be placed
            inside the imported template using the <b>content</b> statement. 
          p+
            This allows you to write components like dialogs, that act as wrappers around arbitrary
            content.
          pre(data-filename="src/views/wrapper.dcl")
            code.handlebars+
              header
                h1 Own content
              article
                {{content}}
              footer
                .completely wrapped
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              {{import wrapper}}
                h2 Inserted content
              {{import wrapper}}
                #other Inserted content
          //- 

        section#statements-route
          h4 route
          p+
            Use the route statement to evaluate markup only for specific URLs. The given URL can contain wildcards,
            which are used to extract parts of the url and put them into the scope below the statement.
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              {{route /pages/users/:user}}
                h1 Showing information for {user}
                {{view UserView(user)}}
                  h2 Hello {firstName}
          p You can provide several alternatives and a default route, which is matched if no other route matches.
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              {{route /pages/users/:user}}
                {{import UserView(user)}}
              {{=> /pages/projects/:project}}
                {{import ProjectView(project)}}
              {{=>}}
                {{import NotFoundView}}
          //- 

        section#statements-as
          h4 as
          p+
            Use the as statement to introduce a DOM element to the scope.
            <br>
            This feature can be used to pass DOM elements to view model constructors and methods,
            instead of relying on class selectors etc.
          pre(data-filename="src/views/layout.dcl")
            code.javascript+
              // Import element into scope...
              input(type="text" {{as myInput}})
              // ...use it as an argument to a view model method
              button({{on click someMethod(myInput)}})
          //- 

        section#statements-switch
          h4 switch
          p+
            When you nest markup below a regular if statement, the corresponding views and elements will be
            removed from the DOM as soon as the statement's expression turns falsy and get created anew when it 
            becomes truthy again.
          p+
            In some cases, you may wish your views to <b>retain their state</b> though, such as when cycling through
            individual tabs in a tabbed container for instance. Use the switch-statement to declare a number
            of alternative states that are all kept in memory, while only a single element gets attached to
            the DOM at any given point in time.
          .note The switch statement is not implemented yet
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              {{switch probability > 0.8}}
                {{view BadgeView}}
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              {{switch}}
              {{=> probability > 0.8}}
                {{view GreenView}}
              {{=> probability > 0.5}}
                {{view OrangeView}}
              {{=>}} // Default
                {{view RedView}}
          //-

        section#statements-client
          h4 client
          p+
            Use the client statement to omit sections of your template from server rendering.
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              {{client}}
                h1 Interactive demo
                canvas({{on mousemove onMouseMove}})
          p+
            In same cases, this may in fact even make your HTML more semantic.
            Consider links in a document for example, that you might spice up at runtime by surfacing information
            about their target resource on mouse hover.
            <br>
            You might render this as a simple anchor tag on the server,
            but use a more elaborate widget on the client, which would not by semantically describable using HTML anyway.
          pre(data-filename="src/views/layout.dcl")
            code.handlebars+
              {{client}}
                {{import CrazyWidget('/my/resource')}}
              {{=>}}
                a(href="/my/resource") Check this!
          //- 

    article#data-models
      h2 Data Models
      p+
        Data models <b>structure</b> your application data and code, shield you from the <b>database</b>, provide
        <b>offline capabilities</b> and report updates to their data to interrested listeners using <b>events</b>.
      p+
        A model definition consists of a <b>collection name</b>, defaults for all attributes and methods
        to operate on that data. In this example, JSON data for your todos will be available under the URL <b>/api/todos</b>.
      p+
        Note that model properties get accessed using the <b>get</b> and <b>set</b> methods and never directly.
      pre(data-filename="app.js")
        code.javascript+
          var Todo = declaire.Model('todos', {
            title: 'Untitled Todo',
            done: false,
          
            check: function() {
              this.set('done', true);
            }
          });
      p+
        Individual models can now be created from that definition using the <b>create</b> method.
        You can also pass a hash of values to the constructor to set some properties directly on creation.
        <br>
        Once created, the object is visible to your application and fully functional, but is not
        persisted to the server yet. To make it visible to other users of the app as well,
        we need to <b>save</b> it to the database using the appropriately named method.
      pre(data-filename="app.js")
        code.javascript+
          var todo = Todo.create({title: 'Foo'});
          todo.check();
          todo.save();
      p As a convenience, setting properties and saving immediately can be done in a single method call.
      pre(data-filename="app.js")
        code.javascript+
          todo.save({done: true});
      //-
      section#events
        h3 Events
        p+
          In many cases, the event system is invisible to you and is used by the template engine
          automatically to update the DOM when data in your models changes.
          You can also access it yourself however, using a handful of methods:
        pre(data-filename="app.js")
          code.javascript+
            // Change events for individual properties trigger first
            todo.on('change:title', function(title) {
              console.log("The title changed to " + title);
            });
            
            // Updates to one or many properties finalize with a generic
            // change event, that carries a hash of all new values
            todo.on('change', function(changes) {
              console.log("To resume...");
              for(var key in changes) {
                console.log(key + ' changed to ' + changes[key]);
              }
            });
            
            // Destroy after use
            todo.once('change:done', function(done) {
              console.log("This will get called only once");
              todo.delete();
            });
            
            // Emitted when new data arrived from the network,
            // on initial load or due to push updates
            todo.on('fetch', function() {});
            
            // Emitted after an object got reset to the remote state
            todo.on('revert', function() {});
            
            // Emitted after successful perssistance to the server
            todo.on('save', function() {});
            
            // Emitted before the object gets deleted locally
            // and potentially after it was deleted remotely
            todo.on('delete', function() {});
        p The <b>on</b> method returns the handler itself, so that it can be unregistered again later:
        pre(data-filename="app.js")
          code.javascript+
            var handler = todo.on('change', function() {});
            todo.off(handler);
        //- p What events are emited?
      
      section#computed-properties
        h3 Computed Properties
        p+
          Regular model methods implicitly become computed properties simply by accessing them
          from a template or through the <b>get</b> method directly.
        p+
          They will then trigger change events, just like normal properties, when one of their
          dependencies change. These <b>dependencies</b> are tracked automatically upon the first
          call to <b>get</b> and will subsequently get updated on every access.
        pre(data-filename="app.js")
          code.javascript+
            var Person = declaire.Model('people', {
              firstName: '',
              lastName: '',
            
              name: function() {
                return this.get('firstName') + ' ' + this.get('lastName');
              }
            });
        pre(data-filename="src/views/ContactView.dcl")
          code.handlebars+
            h1 {name}
        //- 
      section#realtime
        h3 Realtime Updates
        p+
          When model objects that you have checked out in your application change in the database, they
          will automatically receive <b>push updates</b> from the server. This happens in such a way that local,
          unsaved changes are preserved and take precedence over the remote changes.
        p+
          If you want to purge your local changes and revert back to the most recent database state,
          simply call the <b>revert</b> method.
        pre(data-filename="app.js")
          code.javascript+
            todo.set({done: true});
            todo.get('done'); // true
            todo.revert();
            todo.get('done'); // false
        p You can use this to easily implement a dialog which allows for cancelling changes.
        pre(data-filename="src/views/layout.dcl")
          code.handlebars+
            form
              h1 Edit Todo
              input(type="text" value="{:todo.title!}")
              footer
                button({{on click todo.save}}) Save
                button({{on click todo.revert}}) Cancel
        p+
          In addition to emiting the regular <b>change</b> events for every property that got changed and the
          generic change event, the model will also fire a <b>fetch</b> event, that carries a hash of actual
          changes. Note that the fetch event will also be fired when its list of changes is empty.
        pre(data-filename="app.js")
          code.javascript+
            // Called when new data arrived from the network,
            // on initial load or due to push updates
            todo.on('fetch', function(changes) {});

      section#relations
        h3 Relations
        p+
          When you set a property of a model object to another model object, saving the first will
          automatically generate a <b>reference</b> to the second and save that to the database in its place.
          The same goes for collections, which get serialized to a series of references before being
          persisted.
        p+
          When the object is loaded again, its relations will get resolved automatically, but only one level deep.
          This means that any <b>directly</b> referenced model objects will get loaded as well. Collections remain <b>lazy</b>.
        p+
          To use further references in the referenced model objects, these must then be resolved first.
          Use the <b>resolve</b> method to do that.
        pre(data-filename="app.js")
          code.javascript+
            Todo.load(todoId, function(todo) {
              var author = todo.get('author');
              // Regular properties are immediately available
              console.log(author.get('name'));
              // To use object references, author must be resolved first
              author.resolve(function() {
                console.log(author.get('father').get('name'));
              });
            });

      section#model-offline
        h3 Local Storage
        p+
          Any model instance checked out from the server, or created, modified or deleted locally,
          will get cached in local storage if possible. This allows for using the model system <b>transparently</b>
          while the user is offline. <br>Any changes saved will be <b>synchronized</b> to the server once it can be
          reached again. When you load a model instance, either manually or by resolving another model,
          you will receive a copy from local storage almost immediately. A network request is then made
          to receive any new changes from the server, which will trigger the appropriate <b>change</b>
          and <b>fetch</b> events.

      section#model-history
        h3 History & Rollback
        p+
          Use the <b>UndoManager</b> class to manage collections of related model instances that you want to
          keep track of as a whole.
          <br>
          After setting and/or saving several related model properties you can save these changes as
          an <b>atomic unit</b> using the <b>step</b> method.
        pre(data-filename="app.js")
          code.javascript+
            var manager = declaire.UndoManager([todo, user]);
            todo.set({done: true, title: 'New Title'});
            user.get('todos').add(todo);
            manager.step();
        p+
          You can now navigate between all saved milestones using the <b>back</b> and <b>forward</b> methods.
        pre(data-filename="app.js")
          code.javascript+
            manager.back();
            manager.forward();
        p+
          Note that calling the <b>step</b> method as well as the navigation methods will actually save your
          models to the database.

    article#view-models
      h2 View Models
      p+
        View models inherit from <b>Declaire.Model</b>, but fulfill a different purpose.
        <br>
        They are the <b>building blocks</b> of your UI logic, cannot be saved and export a name by which they can
        be instantiated from within templates using the <b>view</b> statement.
      p+
        Normally, a view model will want to fetch data on instantiation to make it available to templates.
        Note that, as opposed to normal models, you cannot instantiate and delete view models
        yourself, as this job is done by the template engine <b>automatically</b>.
      p+
        Therefore, view models take a <b>constructor</b> function as their third argument, that gets passed the
        fresh model instance as <b>this</b>. If you manually allocate any resources or connect any event handlers
        here, make sure that you also register for the <b>remove</b> event, to clean that up at the appropriate time.
      pre(data-filename="app.js")
        code.javascript+
          declaire.ViewModel('Clock', {
            time: null
          }, function() {
            // Update model state every second once the view exists
            var iv = setInterval(function() {
              this.set('time', new Date());
            }, 1000);
            // Clear handler when the view gets removed from the DOM
            this.on('remove', function() {
              clearInterval(iv);
            });
          });
      pre(data-filename="src/views/layout.dcl")
        code.handlebars+
          {{view Clock}}
            time {time}
      p+
        When you need to call asynchronous code to initialize your view, you may return a <b>promise</b> from the
        constructor function:
      pre(data-filename="app.js")
        code.javascript+
          declaire.ViewModel('DataHungryViewModel', {}, function() {
            var self = this;
            return _.promiseFrom($.get('lotsof.data')).then(function(data) {
              self.set('data', data);
            });
          });
      p+
        If you need to manually register event handlers on other models from a constructor, you can do so
        using the view's <b>listenTo</b> method. This has the advantage of your event handlers being
        <b>automatically unregistered</b> when the view gets destroyed.
      pre(data-filename="app.js")
        code.javascript+
          declaire.ViewModel('SomeViewModel', {}, function() {
            this.listenTo(otherObj, 'change', function() {
              console.log("Other object changed");
            });
          });
      p+
        Accessing the DOM manually is <b>discouraged</b> in Declaire, but if you absolutely need to do so, perhaps
        because of another library that you want to use, you can achieve that using the <b>attach</b> event.
      pre(data-filename="app.js")
        code.javascript+
          declaire.ViewModel('SomeViewModel', {}, function() {
            // Our DOM element itself is already accessible in the constructor
            var el = this.element;
            // Wait for the attach event to make sure that it has been
            // inserted into the page and all children have been rendered
            this.on('attach', function() {
              SomeLibrary.mangle(el);
            });
          });
      p+
        See the
        <a href="#statements-view">view statement </a>
        for detailed information on how to use view models inside templates.

    article#collections
      h2 Collections
      p+
        Collections are like arrays that additionally emit <b>add</b>, <b>remove</b>, <b>change:length</b>
        and <b>change</b> events when their contents are changed.
      pre(data-filename="app.js")
        code.javascript+
          var c = declaire.Collection([1, 2, 3]);
          c.once('add', function() {
            c.remove(2);
          });
          c.add(4);
          c.serialize(); // [1,3,4]
      p+
        When a model contains collections as properties, saving the model will only save <b>references</b> to related
        objects in its collections. Note that when the model is later loaded again, its collections will <strong>NOT</strong> be restored
        automatically, as a safeguard against accidentally downloading the entire database.<br>
        Collections containing model instances therefore need to be resolved using the asynchronous <b>resolve</b> method before usage.
      pre(data-filename="app.js")
        code.javascript+
          var todos = declaire.Collection();
          todos.add(Todo.create());
          todos.serialize(); // error: Cannot serialize unsaved objects
          todos.at(0).save(function() {
            todos.serialize(); // [{_ref: {id: 'xyz123', collection: 'todos'}}]
          });
          // Resolve is of course unneccessary in this case,
          // because we just created the collection ourselves
          todos.resolve(function() {
            todos.each(function(todo) {});
          });
    // Warnings like here https://youtu.be/z5e7kWSHWTg?t=12m20s


    article#queries
      h2 Queries
      p+
        Queries filter collections and models according to a
        given <b>query object</b>. Once created, a query remains active, meaning that
        matching objects that get added to the database or collection will
        show up after the fact and trigger the appropriate <b>add</b>, <b>remove</b>, <b>change:length</b> and <b>change</b> events. A Query will also update
        when one of the properties filtered over changes for one of the objects in the collection.
      p+
        Queries can be <b>narrowed down</b> further, by calling the chainable filter method:
      pre(data-filename="app.js")
        code.javascript+
          var finishedTodos = declaire.Query(Todo, {done: true});
          var aboutSports = finishedTodos.filter({topic: 'sports'});
          
          // Calling resolve() will actually execute the built up query
          // and return a collection of matching items
          aboutSports.resolve(function(todos) {
            todos.each(function(todo) {
              todo.delete();
            });
          });
      p+
        You can directly return a Query from a computed property. The template engine will resolve
        it automatically when/if it renders the property.
        <br>
        Note that we construct the query using the shorthand <b>all</b> method on a model in this example.
      pre(data-filename="app.js")
        code.javascript+
          declaire.ViewModel('SearchUsersView', {
            query: '',
            results: function() {
              // Filter works flawlessly on Person.name, btw,
              // which is itself a computed property
              return Person.all().filter({name: {$regex: this.get('query')}});
            }
          });
      pre(data-filename="src/views/searchUsers.dcl")
        code.handlebars+
          {{view SearchUsersView}}
            input(type="text" placeholder="Search for people" value="{query!}")
            ul
              {{for results}}
                li {name}
      p+
        Here, the <b>query</b> property of the view model gets driven by its binding to the text input.
        When the user inserts a character, query gets updated, fires a <b>change event</b> which causes
        results to fire one as well, which causes the template engine to <b>update</b> the list of
        search results.
      p Look ma! No ajax! No event handlers!

      section#queries-syntax
        h3 Query Syntax
        p+
          Declaire's query syntax is actually a <b>subset of MongoDB's query objects</b>:
          Simply supply a reference object with the values that you want to match.
        pre(data-filename="app.js")
          code.javascript+
            var scienceBooks = books.filter({topic: 'science'});
        p For more <b>complex queries</b>, the following special operators are available:
        //-
        section
          h4 $regex
          p Filter models by matching a regular expression to a field.
          pre(data-filename="app.js")
            code.javascript+
              var searchResults = books.filter({title: {$regex: 'foo'}});
        //-
        section
          h4 $lt, $gt
          p Filter models by comparing values numerically.
          pre(data-filename="app.js")
            code.javascript+
              var cheapBooks = books.filter({price: {$lt: 5}});
        //-
        section
          h4 $or
          p Supply an array of conditions, at least one of which must be met to satisfy the filter.
          pre(data-filename="app.js")
            code.javascript+
              var goodValueBooks = books.filter({$or: [{rating: {$gt: 8}}, {price: {$lt: 5}}]});
        //- 

      section
        h3 Local Storage
        p+
          When a query is evaluated, it is performed against the local model cache first, returning
          results almost <b>immediately</b>. When the user is online, a live query to the database is
          then performed in the <b>background</b>, to fetch additional matching objects from the server.
          <br>
          When these arrive, <b>add</b> and <b>remove</b> events, as well as a final <b>fetch</b> event
          will be emited by the query, causing bound views und dependent properties to update.

    article#main-model
      h2 The Main Model Singleton Instance
      p+
        The main model sits at the very <b>bottom of every scope</b> and gets created and updated
        by the framework. It contains several properties of interest to
        <a href="#routing">routing</a>,
        <a href="#offline">offline handling</a>,
        <a href="#session">session</a>,
        <a href="#components">components</a>
        and potentially any application.
        <br>
        Property names start with an underscore to prevent <b>name collisions</b> with your own properties.
      section
        h4 _page
        p+
          Contains the current page URL. Use it from a computed property to make it
          dependent upon navigation within the application.
        //- These get created dynamically and do not belong in the main model:
        //- h4 _params
        //- p
        //-   Contains the parameters given to the import statement or view. Useful to delegate these to
        //-   another view model.
        //- h4 _content
        //- p Contains markup nested below an import statement. Useful to customize reusable components.
        h4 _online
        p+
          Represents the current state of connectivity. Useful to show to the user when changes do
          not currently reach the server.
        h4 _authenticated
        p Tells if the user is logged in.
        h4 _version
        p+
          Changes as soon as a new version of the application is available and has been loaded
          into the offline cache. This is a good point in time to inform the user that reloading the page
          will bring new goodness.
        h4 _cookie
        p+
          Contains another complete model object that acts as a <b>mirror</b> for the real <b>browser session</b>.
          This allows you to use the cookie everywhere you can use a model.
      
      section
        h3 Accessing the Main Model from Javascript
        p As a part of any scope, its properties are available in any template.
        pre(data-filename="src/views/layout.dcl")
          code.handlebars+
            {{if !_online}}
              dialog Waiting for connection ...
        p The main model can also be accessed from Javascript as an attribute on the <b>application object</b>.
        pre(data-filename="app.js")
          code.javascript+
            app.mainModel.on('change:_version', function(v) {
              if(confirm('Reload to use new version?')) {
                window.location = window.location;
              }
            });
        //- 

    article#routing
      h2 Routing & Navigation
      p+
        Routing in Declaire works differently from most other frameworks.<br>
        In most cases, you will want to use the <a href="#statements-route">route statement</a> in your topmost
        template to handle routing.
      p+
        Another possibility is using the <b>_page</b> property on the main model directly from <b>templates</b> or
        <b>computed properties</b>:
      pre(data-filename="src/views/layout.dcl")
        code.handlebars+
          {{if _page == '/pages/todos'}}
            {{import TodosView}}
      pre(data-filename="app.js")
        code.javascript+
          declaire.ViewModel('SomeViewModel', {
            someResults: function() {
              var condition = (app.mainModel.get('_page').indexOf('foo') != -1);
              return condition ? 'Foo results' : 'Bar results';
            }
          });
      p Last but not least, you can always listen to page changes using Javascript:
      pre(data-filename="app.js")
        code.javascript+
          app.mainModel.on('change:_page', function(page) {
            console.log("The url changed to " + page);
          });
      //- 

      section#routing-navigation
        h3 Navigation
        p+
          Any anchor tag pointing to a URL below the <b>/pages</b> namespace, will automatically be hijacked
          by the framework und change the <b>_page</b> property of the <a href="#main-model">main model</a>
          when clicked, causing the <a href="#statements-route">route statement</a> to update as well.
        p+
          If you need to manually change the current page from Javascript, simply <b>set</b> the <b>_page</b>
          property yourself:
        pre(data-filename="app.js")
          code.javascript+
            app.mainModel.set('_page', '/pages/welcome');
        //- 

    //- article#client-only
    //-   h2 Running Client/Server-only Code
    //-   p+
    //-     By default, all your code is executed on both server and client, leading to consistent results.
    //-     Sometimes though, this will not do the trick and you might want to execute code only on the one side
    //-     or the other.
    //-   p+
    //-     Declaire accepts several hooks in its start method, that get executed at specific points
    //-     in time. Some on the server, some on the client:
    //-   pre(data-filename="app.js")
    //-     code.javascript+
    //-       console.log("Executed once on both client and server");
          
    //-       declaire.start({
    //-         beforeConnect: function(express, mongoDB) {
    //-           console.log("Executed only on the server");
    //-         },
          
    //-         onLoad: function() {
    //-           console.log("Executed only on the client");
    //-         }
    //-       });
    //-   p+
    //-     Declaire also provides helper methods to exclude arbitrary code segments, that can
    //-     be used both with a callback, or as a regular function:
    //-   pre(data-filename="app.js")
    //-     code.javascript+
    //-       // Continuation passing style
    //-       declaire.onServer(function() { });
          
    //-       // Good ol' boolean function
    //-       if(declaire.onClient()) { }
    //-   p+
    //-     You can also require additional npm modules on one side only.
    //-     Modules which are only required on the server will not be included in the javascript bundle.
    //-   pre(data-filename="app.js")
    //-     code.javascript+
    //-       if(declaire.onServer()) require('newrelic');

    article#offline
      h2 Offline Support
      p+
        After the initial page load, Declaire apps can be reloaded - even across browser
        restarts - when the device has <b>no</b> connection to the internet, by the virtue of a
        framework generated <b>offline manifest</b>, that is injected into your pages.
        <br>
        Even when you are online, this will give your applications a <b>serious boost</b> on
        subsequent loads. 
      p+
        Declaire also keeps a cache of checked out data models and can
        silently retrieve any objects that had been loaded already from local storage,
        without modifications to your code.
      p+
        Modifications to existing objects or newly created ones will be <b>saved locally</b>
        until the server can be reached for synchronization again.
      p+
        All of this happens completely transparently to you. When your app needs to know
        more about its internal state though, the 
        <a href="#main-model">main model</a>
        contains several fields of interest.

    //- article#service-models
    //-   h2 Service Models
    //-   p+
    //-     Service Models offer a seamless way to integrate <b>external services</b> into a Declaire
    //-     application.
    //-     <br>
    //-     Data will be mapped to a regular model object that can be consumed by
    //-     applications like any other model instance.
    //-   p+
    //-     This means not only that your templates and queries will update automatically as new
    //-     data arrives, but also brings other advantages:
    //-   ul
    //-     li
    //-       h3 Performance
    //-       p Slow <b>requests to the API</b> can not slow down your page loads.
    //-       p+
    //-         The render cache knows when data changes and can invalidate render fragments in a
    //-         fine-grained way.
    //-     li
    //-       h3 Robustness
    //-       p+
    //-         You don't introduce another <b>point of failure</b>, as declaire can handle unresponsive
    //-         services gracefully.
    //-     li
    //-       h3 Offline Capability
    //-       p Once requested, data transparently remains <b>available offline</b> as with any model object.
    //-   .note Service models are not implemented yet
    //-   pre(data-filename="app.js")
    //-     code.javascript+
    //-       var Twitter = app.ServiceModel('tweets', {
    //-         endpoint: 'http://api.twitter.com' 
    //-       }, {
    //-         user_name: 'userName',
    //-         hash_tags: 'hashes'
    //-       });
          
    //-       app.ViewModel('TwitterView', {
    //-         tweets: Twitter.all({hashTags: {$contains: 'yolo'}})
    //-       });
    //-   pre(data-filename="src/views/layout.dcl")
    //-     code.handlebars+
    //-       {{for tweets}}
    //-         h2 {userName} said:
    //-         p {text}
    //-         ul.tags
    //-           {{for tag in hashes}}
    //-             li {tag}

    article#utils
      h2 Utility Functions
      p+
        Declaire strives to keep a footprint as <b>low as possible</b> and doesn't use any client-side dependencies.
        It therefore keeps its own little library of utility functions internally, instead of depending on a fullblown
        alternative such as <a href="http://underscorejs.org" target="_blank">Underscore.js</a>. This way, we actually use every
        single line of code that we ship.
      p+
        Your application can access these as an attribute on the <b>main module</b> as well. It is a good idea to assign the module to a
        shorter handle before using it.
      //- {{import HighlightView('app.js')}}+
      //-   var declaire = require('declaire');
      //-   var _ = declaire.Utils;
      pre(data-filename="app.js")
        code.javascript+
          var declaire = require('declaire');
          var _ = declaire.Utils;
      p+
        You may or may not find these utilities to be sufficient already for your application's needs.
      //-
      section
        h4 each
        p Iterate arrays in the same way as objects.
        pre(data-filename="app.js")
          code.javascript+
            // Iterate through arrays
            _.each([1,2,3], function(value) {});
            
            // ..with index if you like
            _.each([5,6,7], function(value, index) {});
            
            // Iterate objects in the same way
            _.each({a: 'foo', b: 'bar'}, function(value, key) {});
      //-
      section
        h4 map
        p Return a copy the given array or object, with each item replaced by the given callback
        pre(data-filename="app.js")
          code.javascript+
            var doubles = _.map([1,2,3], function(n) { return n * 2 });
            // Index available if needed
            _.map([9,8,7], function(n, index) { return n + index });

            // Objects are welcome too
            var ages = {
              Fred: 31,
              Anna: 24
            };
            var futureAges = _.map(ages, function(age) { return age + 20 });
            //=> {Fred: 51, Anna: 44}

            // When called with a string, we map directly to the items' members
            var names = _.map(people, 'name');
      //-
      section
        h4 times
        p Call the given function <b>n</b> times
        pre(data-filename="app.js")
          code.javascript+
            _.times(2, function() { console.log('Hip') });
            console.log('Hooray');
      //-
      section
        h4 select
        p Returns a subset of items, for which the given function returns something truthy
        pre(data-filename="app.js")
          code.javascript+
            var odds = _.select([1,2,3,4], function(n) { return n % 2 });
      //-
      section
        h4 all
        p Check if all items match the given condition
        pre(data-filename="app.js")
          code.javascript+
            var doneDeal = _.all(books, function(book) { return book.price < 10 });
      //-
      section
        h4 any
        p Check if any item matches the given condition
        pre(data-filename="app.js")
          code.javascript+
            var forbidden = _.any(people, function(person) { return person.age < 18 });
      //-
      section
        h4 contains
        p Check if the given item is a member of the array, object or string
        pre(data-filename="app.js")
          code.javascript+
            var hasFooInList = _.contains(['foo', 'bar'], 'foo');

            // For objects, the actual key where the value was found is returned
            var barKey = _.contains({foo: 1, bar: 2}, 2);
      //-
      section
        h4 invoke
        p Call the named method on each item
        pre(data-filename="app.js")
          code.javascript+
            _.invoke(todos, 'delete');

            // Further arguments will get passed to the invoked method
            _.invoke(items, 'meth', arg1, arg2);

            // Invoke returns an array of return values
            var uppercased = _.invoke(['foo', 'bar'], 'toUpperCase');
      //-
      section
        h4 zip
        p Interleave the items of two arrays, stop on the shorter list
        pre(data-filename="app.js")
          code.javascript+
            var a = [1,2,3];
            var b = [4,5,6];
            _.zip(a, b); //=> [[1,4], [2,5], [3,6]]

            // Zip can be also be used with a callback 
            _.zip(a, b, function(fromA, fromB) {});
      //-
      section
        h4 flatten
        p Make a flat array from a hierarchy of nested arrays
        pre(data-filename="app.js")
          code.javascript+
            _.flatten([1, [2, [3]], 4]); //=> [1,2,3,4]
      //-
      section
        h4 merge
        p Return new object with the fields from both given objects
        pre(data-filename="app.js")
          code.javascript+
            _.merge({a: 'foo'}, {b: 'bar'}); //=> {a: 'foo', b: 'bar'}
      //-
      section
        h4 union
        p Merge two arrays
        pre(data-filename="app.js")
          code.javascript+
            var one2six = _.union([1,2,3], [4,5,6]);
      //-
    article#stylesheets
      h2 Stylesheets
      p+
        Declaire supports <a href="http://learnboost.github.io/stylus/" target="_blank">Stylus</a>
        with <a href="http://tj.github.io/nib/" target="_blank">Nib</a>
        for writing your stylesheets, out of the box.
        These are great libraries and the indented syntax matches Declaire's templates nicely.
        Among lots of other functionality, they provide you with:
      pre(data-filename="stylesheets/main.styl")
        code.stylus+
          // Cross-browser reset
          global-reset()
          
          // Variables
          $mainColor = #0aaaad
          
          // Apply vendor-prefixes automatically for unstandardized CSS
          body
            background: linear-gradient(top, white, black)
          
          // Nested definitions
          article
            margin: 3rem 0
            h2
              font-weight: bold
          
          // Color calculations, etc
          a
            color: $mainColor
            &:hover
              color: $mainColor * 0.9

          // Server side imports
          @require 'other.styl'
      p+
        Simply put your stylus files into the <b>/stylesheets</b> folder of your application
        and they will be served under the identical path, just with the <b>.css</b> extension.
      pre(data-filename="src/views/layout.dcl")
        code.jade+
          head
            link(href="/stylesheets/main.css" rel="stylesheet")
      //-
    article#deployment
      h2 Deployment
      p+
        Declaire works as a standard 
        <a href="http://npmjs.com" target="_blank">NPM</a>
        library and doesn't use any special protocols beside HTTP. You should therefore
        be able to deploy your application anywhere where node applications run.
      p+
        Be sure to set the environment variable <b>NODE_ENV</b> to <b>'production'</b> on production
        systems, to disable development guides like automatic reparsing of templates.
        <br>
        This will also <b>minify your assets</b> and apply some other optimizations.
      section#mongodb
        h3 MongoDB
        p+
          Declaire will by default take connection information from the environment variables <b>MONGOHQ_URL</b>
          and <b>MONGOLAB_URI</b>. Because these variables are set by PaaS services like 
          <a href="http://heroku.com" target="_blank">Heroku</a>,
          this allows Declaire apps to connect to these popular services automagically.
        p You can override this by passing a mongo connection string to the <b>start</b> method.
        pre(data-filename="app.js")
          code.javascript+
            declaire.start({
              mongoUrl: 'mongodb://my-host:27017/my-app',
              mongoDevUrl: 'mongodb://127.0.0.1:27017/my-app',
            });
      section#heroku
        h3 Heroku
        p+
          Follow these simple steps to wrap your app in a
          <a href="http://git-scm.com" target="_blank">Git</a>
          repository and deploy it to
          <a href="http://heroku.com" target="_blank">Heroku</a>:
        pre(data-filename="Shell")
          code.javascript+
            // Go to your app folder
            $ cd my-app
            // Initialize a git repository here
            $ git init
            // Make sure Git doesn't check in generated files
            $ echo $'node_modules' > .gitignore
            // Add everything else to the repo and commit
            $ git add .
            $ git commit -m "Initial commit"
            // Create and configure an application on Heroku
            $ heroku create my-app
            $ heroku config:set NODE_ENV=production
            // Add a database
            $ heroku addons:add mongolab
            // Deploy
            $ git push heroku master
            // Enjoy!
            $ heroku open
        //- 
