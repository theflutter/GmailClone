class MailItem {
  String title, description, content, time;
  bool isRead;
  MailItem({
    required this.title,
    required this.description,
    required this.content,
    required this.time,
    required this.isRead,
  });
}

double mysize = 0.0;
double kPadding = mysize * 0.025;

List<MailItem> mailList = [
  MailItem(
    title: 'Google',
    description: 'This mail is from google',
    content: 'Dummy content for the mail app!',
    time: '1:26 PM',
    isRead: false,
  ),
  MailItem(
    title: 'Google',
    description: 'This mail is from google',
    content: 'Dummy content for the mail app!',
    time: '10:46 PM',
    isRead: false,
  ),
  MailItem(
    title: 'Microsoft',
    description: 'This mail is from Microsoft',
    content: 'Dummy content for the mail app!',
    time: '12:00 PM',
    isRead: false,
  ),
  MailItem(
    title: 'Adobe',
    description: 'This mail is from Adobe',
    content: 'Dummy content for the mail app!',
    time: '4:00 PM',
    isRead: false,
  ),
  MailItem(
    title: 'capegemini',
    description: 'This mail is from capegemini',
    content: 'Dummy content for the mail app!',
    time: 'YESTERDAY',
    isRead: false,
  ),
  MailItem(
    title: 'Razorpay',
    description: 'This mail is from Razorpay',
    content: 'Dummy content for the mail app!',
    time: 'YESTERDAY',
    isRead: false,
  ),
];
