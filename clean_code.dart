void main() {
  sendWelcomeText(MediaType.email,'Alonso');
  
}

void sendWelcomeText(MediaType media, String name) {
  if (media == MediaType.facebook) {
    print('Check facebook');
    print('Execute code auth ...');
    print('Welcome to facebook $name');
  }
  if (media == MediaType.email) {
    print('Check EmailAddress');
    print('Execute code validation ...');
    print('Welcome to facebook $name');
  }
  /*   if (media == MediaType.whatssap) {
    print('Check number');
    print('Execute code sms ...');
    print('Welcome to Whatsapp $name');
  } */
}

enum MediaType {
  facebook,
  email,
 // whatssap,
}
