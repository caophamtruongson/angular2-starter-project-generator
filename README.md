# Angular 2 project generator

Generate an Angular 2 skeleton application.

Angular 2 with Typescript is great, but the configuration involved can be a pain in the butt.
Here's a quick bash script that generates a pre-configured Angular 2 skeleton app.
The skeleton app itself can be found [here](https://github.com/hehly/angular2-starter-project-generator.git).

#### Configuration

Load script upon login.

    $ cd ~/.login_scripts
    $ git clone https://github.com/hehly/angular2-starter-project-generator.git
    $ echo 'source ~/.login_scripts/angular2-starter-project-generator/angular_generate.sh' >> ~/.bashrc
    $ source ~/.bashrc

#### Usage

    $ angular_generate
Open http://localhost:3000 to see your running Angular 2 app.
    
#### Tips    

Build the project

    $ npm build
    
Start the server and rebuild/reload after changes

    $ npm start

    



_Voila_
