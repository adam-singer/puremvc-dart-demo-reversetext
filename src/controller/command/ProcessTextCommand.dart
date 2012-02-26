class ProcessTextCommand extends MVCSimpleCommand
{
  void execute( INotification note ) 
  {
    // Get the text to be processed from the notification
    String text = note.body;
    
    // Process the text
    List chars = text.splitChars();
    StringBuffer reverse = new StringBuffer();
    while (chars.length>0) {
      reverse.add(chars.removeLast());
    }
    
    // Get the TextProxy
    TextProxy proxy = facade.retrieveProxy( TextProxy.NAME );

    // Set the updated text on the TextProxy      
    proxy.text = reverse.toString();
    
    // If reversed text is the same as forward text, 
    // send notification that a palindrome was detected
    if ( reverse == text && text != "" ) this.sendNotification( AppConstants.PALINDROME );
  }
}
