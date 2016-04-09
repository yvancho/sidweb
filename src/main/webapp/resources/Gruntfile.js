/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
module.exports = function (grunt) {
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-autoprefixer');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-watch');

    // Project configuration.
    grunt.initConfig({
        cssmin: {
            clean: {
                files: {
                    'resources/css/main.css': 'resources/css/main.min.css'
                }
            }
        },
        autoprefixer: {
            compile: {
                files: {
                    'resources/css/main.css': 'resources/css/main.css'
                }
            }
        },
        uglify: {
            build: {
                files: {
                    'resources/js/main.js': [
                        'resources/bower_components/angular/angular.js',
                        'resources/bower_components/jquery/dist/jquery.js',
                        'resources/js/*.js'
                    ]
                }
            }
        },
        watch: {
            uglify: {
                files: ['resources/js/*.js'],
                tasks: ['uglify']
            }
        }
    });

    grunt.registerTask('default', ['autoprefixer', 'cssmin', 'uglify']);
};
