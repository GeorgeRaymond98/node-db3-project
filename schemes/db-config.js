const knec = require('kenx')
const config = require('../knexfile');

module.exports = knex(config.development);

