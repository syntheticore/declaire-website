article#examples-view

  header.top-header
    h1 Snippets and Examples
    p+
      This is intended to be a collection of useful snippets and demo applications that demonstrate how to
      achieve common tasks using Declaire. Note that some of the snippets imply the existence of code from previous
      examples without making that explicit.

  nav.side-bar
    header Examples
    ul
      li > a(href="#font-awesome") Using FontAwesome
      li > a(href="#live-search") Live Search
      li > a(href="#dialog") Easy Dialogs
      li > a(href="#live-times") Live Dates and Times
      li > a(href="#todos") Todos Application
  
  section.main-content

    article#font-awesome
      h2 Using FontAwesome as an NPM dependency
      p+
        If a module that you installed as an NPM dependency needs to be hosted over http to work,
        you can easily achieve that by including it in the <b>npmPublic</b> field of the Application declaration:
      
      pre(data-filename="Shell")
        code.javascript+
          $ npm install font-awesome --save
      pre(data-filename="app.js")
        code.javascript+
          var app = declaire.Application({
            npmPublic: ['font-awesome']
          });
      p It will be hosted at the top level of your application:
      
      pre(data-filename="views/layout.tmpl")
        code.handlebars+
          head
            link(href="/font-awesome/css/font-awesome.min.css" rel="stylesheet")
      //- 

    article#live-search
      h2 Implementing a live search feature
      p+
        We can use a query returned from a computed property together with an input binding for creating a live search feature.
        <br>
        Note that we construct the query using the shorthand <b>all</b> method on a model.
      
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
      pre(data-filename="views/searchUsers.tmpl")
        code.handlebars+
          {{view SearchUsersView}}
            input(type="text" placeholder="Search for people" value="{query!}")
            ul
              {{for results}}
                li {name}
      p+
        Here, the query property of the view model gets driven by its binding to the text input.
        When the user inserts a character, query gets updated, fires a change event which causes
        results to fire one as well, which causes the template engine to update the list of
        search results.
      p Look ma! No ajax! No event handlers!

    article#dialog
      h2 Easily edit an object's properties in a dialog
      p+
        If you want edits in a form to be 'live' - showing a preview of what the changes look like -
        while still being able to revert all changes when the user cancels the dialog, you could
        do it like this:
      pre(data-filename="views/layout.tmpl")
        code.handlebars+
          form
            h1 Edit Object
            input(type="range" min="0" max="100" value="{:brightness!}")
            input(type="range" min="0" max="100" value="{:opacity!}")
            footer
              button({{action click save}}) Ok
              button({{action click revert}}) Cancel
      p+
        The colons before the binding paths make sure that concurrent edits from other
        users do not fight with the users input. Adding the exclamation mark still makes the
        bindings 'set' the object's properties though, which will be reflected in all
        views.
      p+
        The Ok and Cancel buttons can now be nicely mapped to the <b>save</b> and <b>revert</b> methods inherited
        from <b>declaire.Model</b>, to either commit the changes to the database or drop the recent changes.

    article#live-times
      h2 Keep times on your pages up to date
      p+
        In this example, we show the seconds passed since the creation of individual Todos.
        The <b>createdAt</b> property - which we pass this to the constructor of our <b>RelativeTime</b> component -
        is automatically set by the framework for every new object.
        We trigger updates to the view by repeatedly setting its <b>now</b> property, which is referenced in
        the computed property bound in the template.
      pre(data-filename="src/views/RelativeTime.js")
        code.javascript+
          module.exports = declaire.ViewModel('RelativeTime', {
            secondsAgo: function() {
              return Math.round((this.get('now').getTime() - this.get('date').getTime()) / 1000);
            }
          }, function(date) {
            var self = this;
            self.set('date', new Date(date));
            // Update model state every second once the view exists
            var iv = setInterval(function() {
              self.set('now', new Date());
            }, 1000);
            // Clear handler when the view gets removed from the DOM
            self.on('remove', function() {
              clearInterval(iv);
            });
          });
      pre(data-filename="src/views/RelativeTime.tmpl")
        code.handlebars+
          {{view RelativeTime(date)}}
            time {secondsAgo} seconds ago
      pre(data-filename="src/views/layout.tmpl")
        code.handlebars+
          {{for todos}}
            h1 {title}
            p
              | This Todo was created
              {{import RelativeTime(date: createdAt)}}
      //- 

    article#todos
      h2 Write a Todos Application
      p+
        This is a more complete version of the Todos demo application on the start
        page. It allows for renaming todos by clicking on their title and it tracks
        the number of finished and unfinished todos separately.
      
      //- .note.
      //-   Note that this example contains several planned, advanced features and will not currently run.
      //-   <br>
      //-   Watch for warnings like this one throughout the documentation,
      //-   to check which features already work and which don't.
      
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
          
            newTodo: function(e, input) {
              Todo.create({title: input.val()}).save();
              input.val('');
            },
          
            rename: function(e, todo) {
              todo.setTemporary('renaming', true);
            },
          
            finishRename: function(e, todo) {
              todo.save({name: e.element.val()});
              todo.setTemporary('renaming', false);
            }
          });
          
          app.init(function(start) {
            start();
          });
      //- 
      pre(data-filename="views/layout.tmpl")
        code.handlebars+
          head
            title Todos
            link(href="/stylesheets/main.css" rel="stylesheet")
          body
            {{view TodosView}}
              header
                h1 Todos
              main
                form({{action submit newTodo(input)}})
                  input(type="text" placeholder="What's next?" {{as ::input}})
                  button Create Todo
                ul.todos
                  {{for todo in todos}}
                    li>label
                      input(type="checkbox" checked="{todo.done!!}")
                      h2({{action click rename(todo)}}) {todo.title}
                      button({{action click todo.delete}}) Delete
                      {{if todo.renaming}}
                        input(type="text" placeholder="New Name" value="{:todo.name}" {{action enter finishRename(todo)}})
          
              footer {todos.length} items left to do
