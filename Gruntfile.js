'use strict';

module.exports = function(grunt) {

  grunt.initConfig({
    symlink: {
      options: {
        overwrite: true
      },
      expanded: {
        files: [
          {
            expand: true,
            overwrite: true,
            cwd: '/Users/talley/Documents/repos/dotfiles/vim/snippets/javascript',
            src: ['*.snippet'],
            dest: '/Users/talley/.vim/bundle/vim-snippets/snippets/javascript'
          }
        ]
      }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-symlink');

  grunt.registerTask('default', ['symlink']);

};
