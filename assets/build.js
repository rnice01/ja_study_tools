const esbuild = require('esbuild');
const ElmPlugin = require('esbuild-plugin-elm');

esbuild.build({
  entryPoints: ['src/index.js'],
  bundle: true,
  outdir: '../priv/static/assets/',
  watch: process.argv.includes('--watch'),
  plugins: [
    ElmPlugin({
      debug: true,
      clearOnWatch: true,
    }),
  ],
}).catch(_e => process.exit(1))