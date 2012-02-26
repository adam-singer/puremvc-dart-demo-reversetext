class TextComponentMediator extends MVCMediator
{
  // Name Mediator will be registered as 
  static String NAME = "TextComponentMediator";
  
  // Constructor
  TextComponentMediator( TextComponent viewComponent ):super( NAME, viewComponent ){}  

  // Accessors that cast viewComponent to the correct type for this Mediator
  TextComponent get textComponent() { return viewComponent; }
  void set textComponent( TextComponent component ) { viewComponent = component; }
  
  // Called when Mediator is registered
  void onRegister()
  {
    // set listeners on text component
  }
  
  // Also called when Mediator is registered 
  List<String> listNotificationInterests()
  {
    return [ AppConstants.PALINDROME, 
             TextProxy.TEXT_CHANGED ];    
  }
  
  // Called when a notification this Mediator is interested in is sent
  void handleNotification( INotification note ) 
  {
    switch (note.name) 
    {
      case TextProxy.TEXT_CHANGED:
        break;

      case AppConstants.PALINDROME:
        break;
    }  
  }  
}
