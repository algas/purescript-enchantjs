module.exports = function(grunt) {

  "use strict";

  grunt.initConfig({

    libFiles: [
      "src/**/*.purs",
      "bower_components/purescript-*/src/**/*.purs"
    ],

    psc: {
      options: {
        main: "Main",
        modules: ["Main"]
      },
      all: {
        src: ["<%=libFiles%>"],
        dest: "js/index.js"
      }
    },

    dotPsci: ["<%=libFiles%>"]

  });

  grunt.loadNpmTasks("grunt-purescript");

  grunt.registerTask("default", ["psc:all", "dotPsci"]);
};
