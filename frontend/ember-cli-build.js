'use strict';

const EmberApp = require('ember-cli/lib/broccoli/ember-app');
module.exports = function(defaults) {
  var app = new EmberApp(defaults, {
    // fingerprint: {
    //   // matches the `/` mount point
    //   prepend: 'http://localhost:3000/',
    // },
    sassOptions: {
      precision: 4,
      includePaths: [
        './node_modules/@hashicorp/design-system-tokens/dist/products/css',
        './node_modules/@hashicorp/ember-flight-icons/dist/styles',
        './node_modules/@hashicorp/design-system-components/dist/styles',
      ],
    },
  });
  app.import(
    'node_modules/@hashicorp/design-system-components/dist/styles/@hashicorp/design-system-components.css',
    'node_modules/swiper/swiper-bundle.css',
  );

  return app.toTree();
};
