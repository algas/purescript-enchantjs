module.exports = function(grunt) {

  "use strict";

  grunt.initConfig({

    libFiles: [
      "src/Enchant/*.purs",
      "bower_components/purescript-*/src/**/*.purs"
    ],

    clean: ["output"],

    psc: {
      options: {
        main: "Main",
        modules: ["Main"]
      },
      all: {
        src: ["<%=libFiles%>", "src/Main.purs"],
        dest: "js/index.js"
      }
    },

    pscMake: ["<%=libFiles%>"],

    dotPsci: ["<%=libFiles%>"]

  });

  grunt.loadNpmTasks("grunt-contrib-clean");
  grunt.loadNpmTasks("grunt-purescript");

  grunt.registerTask("main", ["psc:all"]);
  grunt.registerTask("default", ["pscMake", "dotPsci"]);
};
