# Angular 2 project generator

Generate an Angular 2 skeleton application.

Angular 2 with Typescript is great, but the configuration involved can be a pain in the butt.
Here's a quick bash script that generates a pre-configured Angular 2 skeleton app.
The skeleton app itself can be found [here](https://github.com/hehly/angular2-starter-project-generator.git).

####  Usage

Load script upon login.

    $ git clone https://github.com/hehly/angular2-starter-project-generator.git
    $ cd angular2-starter-project-generator
    $ mv angular_generate.sh ${HOME}/.my_scripts/
    $ echo 'source ${HOME}/.my_scripts/angular_generate.sh' >> ${HOME}/.bash[_profile/rc]
    $ source ${HOME}/.bash[_profile/rc]

Create a skeleton application.

    $ angular_generate
    $ name: (current-dir) [Enter optional name]
    $ description: [Enter optional description]
    
_Voila_
