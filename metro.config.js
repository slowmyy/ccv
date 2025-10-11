const { getDefaultConfig } = require('expo/metro-config');

const config = getDefaultConfig(__dirname);

config.server = {
  port: 8088,
};

config.resolver.platforms = ['ios', 'android', 'native', 'web'];
config.transformer.minifierPath = require.resolve('metro-minify-terser');

module.exports = config;
