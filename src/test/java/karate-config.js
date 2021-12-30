function fn() {
  var env = karate.env; // get system property 'karate.env'
  if (!env) {
    env = 'dev';
  }

  var config = {

    baseUrl: 'https://petstore.swagger.io/v2',
    anotherUrlBase: 'https://another-host.com/v1'

  };

  if (env == 'stage') {
  config.baseUrl = 'https://stage-host.com/v1/auth'

  } else if (env == 'e2e') {
    config.baseUrl = 'https://e2e-host/v1/auth'
  }

  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;


  //config.myObject = read('classpath:test.json');
  //config.myFunction = read('classpath:test.js');
  //config.myUtils = karate.call('classpath:utils.feature');
  //config.myCommon = read('classpath:common.feature');
  return config;
}