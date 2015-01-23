FB.init
  appId: '652484128121792'
  status: true
  cookie: true
  xfbml: true
  version: 'v2.1'

FB.login ->
  if !FB.getAccessToken()
      console.log 'FB login failed'
  fbToken = FB.getAccessToken()
  FB.api '/me', (me)->
    console.log me
