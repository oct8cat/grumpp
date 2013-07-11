module.exports = (grunt) ->
  grunt.initConfig

    coffee:
      lib:
        expand: true
        cwd: 'src'
        dest: 'lib'
        src: '**/*.coffee'
        ext: '.js'

    watch:
      src:
        files: ['src/**/*.coffee']
        tasks: ['coffee']

    forever:
      options:
        index: 'lib/app.js'

    clean:
      lib: 'lib'

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-forever'

  grunt.registerTask 'dev', ['coffee', 'watch']
  grunt.registerTask 'start', ['forever:start']
  grunt.registerTask 'stop', ['forever:stop']
  grunt.registerTask 'restart', ['forever:restart']

  grunt.registerTask 'default', ['coffee', 'restart']
