What is it?
===========

XMPP bot that receives your messages and runs appropriate Grunt tasks on a
remote server.


Lolwut? Why? WHY, GOD, WHY?
===========================

Well, when you write your code it's totally **RRRRRAGE!!11one** when every 5
minutes some SEO monkeys or designers or whoever says "Yo, git pull that shit"
or "Hey, I misstyped one letter in my fucking CSS, update it right NAO!" and you
forced to open SSH session to your fucking remote server and pull that shit and
update things, HURR DURR.

Of course, they cannot into SSH, but I hope they can use any XMPP client and
remember a couple of Grunt tasks' names to do their shit without you.

I surely hope they can.


Installation
============

`$ npm i grumpp`

NPM `postinstall` trigger compiles CoffeeScript files, so make sure you have
`coffee-script` package installed globally. You can recompile CoffeeScript files
later with `$ grunt coffee`.


Configuration
=============

There is an example of configuration file named `settings.example.json`.

```json
{
  "xmpp": {
    "connect": {
      "jid": "grummp@jabber.org",
      "password": "secret",
      "host": "jabber.org"
    }
  },
  "gruntfiles": {
    "some_project": "/home/www/some_project/Gruntfile.js",
    "another_project": "/home/www/another_project/Gruntfile.js"
  }
}
```

1. Change XMPP account settings such as JID, password and XMPP server.
2. Add gruntfiles paths to "gruntfiles" hash (keys are project names - see
"Usage", values are paths to project's Gruntfile).
3. Rename the configuration file to `settings.{$NODE_ENV}.json`, where
`$NODE_ENV` is Node.js environment name (defaults to 'development', so the file
name will be `settings.development.json`)


Usage
=====

* Start: `$ grunt start`
* Stop: `$ grunt stop`
* Restart: `$ grunt restart`

Default Grunt task (`$ grunt` without arguments) recompiles CoffeeScript and
restarts application.


Obey!
-----

To tell the bot to run Grunt task, add him into your Jabber roster (authorize
yourself in his roster too) and send a message

`some_project doSomething`

where `some_project` is a project name (Remember? The key in "gruntfiles" hash
in settings.) and `doSomething` is a Grunt task name. He will reply to you with
process's STDOUT.


TODO
====
**SEKURETEE!!111 SEKURETEEEEE!!111111oneone**
