FB.init
  appId: '652484128121792'
  status: true
  cookie: true
  xfbml: true
  version: 'v2.1'

FB.login ->
  console.log 'FB.getAccessToken() ->', FB.getAccessToken()
  FB.api '/me', (me)->
    console.log '/me ->', me
  FB.api '/v1.0/me', (me)->
    console.log '/v1.0/me ->', me
