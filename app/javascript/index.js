function onSignIn(googleUser) {
  var profile = googleUser.getBasicProfile();
  console.log('ID: ' + profile.getId()); // GoogleのID
  console.log('Name: ' + profile.getName()); //アカウント名
  console.log('Image URL: ' + profile.getImageUrl()); //プロフィール画像
  console.log('Email: ' + profile.getEmail()); //ユーザーのメールアドレス
}