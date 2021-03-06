process.env.NODE_ENV = process.env.NODE_ENV || 'test'

/*
* This line allows us to run mochapack tests alongside webpack-dev-server.
*
* If RAILS_ENV is missing, webpacker will use the defaults in webpacker.yml.
*
* Since `publicPaths` defaults to `/packs`, the same as development, running tests would
* clobber development packs. In particular, the `manifest.json` generated by mochapack
* doesn't work for the dev-server.
*/
process.env.RAILS_ENV = process.env.RAILS_ENV || 'test'

const environment = require('./environment')
const nodeExternals = require('webpack-node-externals');

environment.config.merge({
  output: {
    devtoolModuleFilenameTemplate: '[absolute-resource-path]',
    devtoolFallbackModuleFilenameTemplate: '[absolute-resource-path]?[hash]'
  },
  mode: 'development',
  externals: [nodeExternals()],
  devtool: 'inline-cheap-module-source-map'
})

module.exports = environment.toWebpackConfig()
