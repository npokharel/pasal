modules = {
    application {
        resource url:'js/application.js',disposition: 'head'
    }
    core {
        dependsOn 'jquery'
        resource url:'/css/raju.css',bundle: 'global'
    }

}