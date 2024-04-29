void main() {
  sendWelcomeText(MediaType.email, 'Alonso');
}

void sendWelcomeText(MediaType media, String name) {
  final messageSender = MediaExecution.fromType(media);

  messageSender.execution(name);
}

enum MediaType {
  facebook,
  email,
  whatssap,
}

abstract class MediaExecution {
  const MediaExecution();

  void execution(String name);

  factory MediaExecution.fromType(MediaType media) {
    return switch (media) {
      MediaType.facebook => MediaFacebook(),
      MediaType.email => MediaEmail(),
      MediaType.whatssap => MediaWhatsapp(),
    };
  }
}

class MediaFacebook extends MediaExecution {
  @override
  void execution(String name) {
    print('Check facebook');
    print('Execute code auth ...');
    print('Welcome to facebook $name');
  }
}

class MediaEmail extends MediaExecution {
  @override
  void execution(String name) {
    print('Check EmailAddress');
    print('Execute code validation ...');
    print('Welcome to facebook $name');
  }
}

class MediaWhatsapp extends MediaExecution {
  @override
  void execution(String name) {
    print('Check number');
    print('Execute code sms ...');
    print('Welcome to Whatsapp $name');
  }
}
