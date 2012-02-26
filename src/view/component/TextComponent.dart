class TextComponent
{
  static String INPUT_TEXT_CHANGED = "input/text/changed";

  TextComponent() {
    
    // use HTML5 querySelector for DOM retrieval
    textForm         = document.querySelector('#textForm');
    textInput        = textForm.querySelector('#inputText');
    textOutput       = textForm.querySelector('#outputText');
    textOutputLabel  = textForm.querySelector('#outputTextLabel');
    checkbox         = textForm.querySelector('input[type=checkbox]');
    reverseButton    = textForm.querySelector('button[type=submit]');
    
    // listen to checkbox state changes
    checkbox.addEventListener( 'change', handleEvent );
    
    // listen to reverse button clicks
    reverseButton.addEventListener( 'click', handleEvent );
  }
  
  HTMLFormElement   textForm;
  HTMLInputElement  textInput;
  HTMLInputElement  textOutput;
  HTMLLabelElement  textOutputLabel;
  HTMLInputElement  checkbox;
  HTMLInputElement  reverseButton;
  
  /**
   * Set the palindrome indicator
   */
  void set isPalindrome ( bool izzit )
  {
    if (izzit) 
      textOutputLabel.innerHTML = "Palindrome Detected";
    else
      textOutputLabel.innerHTML = "Output Text";
  }
  
  /**
   * Set the ouput fields text value
   */
  void set outputText ( String value )
  {
    isPalindrome = false;
    textOutput.value = value;
  }
  
  /**
   * Get the input fields text value
   */
  String get inputText()
  {
    return textInput.value;
  }
  
  /**
   * Handle DOM Events this component is interested in.
   */
  void handleEvent( Event event ) 
  {
    switch( event.type )
    {
      /*
       * The TextComponent's reverse as I type option is
       * enabled and a keypress has been detected- 
       * just fire a text changed event
       */
      case 'keyup':
        dispatchTextChangedEvent();
        break;
      
      /*
       * The TextComponent's reverse button has been clicked.
       * Prevent the form from submitting, and fire a
       * text changed event
       */               
      case 'click':
        event.preventDefault();
        dispatchTextChangedEvent();
        break;
      
      /*
       * The components 'Reverse as I type' checkbox as been
       * ticked or unticked. If ticked, listen to keypress
       * events, otherwise unsubscribe to keypress events.
       */ 
      case 'change':
        if ( checkbox.checked )
          textInput.addEventListener( 'keyup', handleEvent ); 
        else
          textInput.removeEventListener( 'keyup', handleEvent );
        break;
    }
  }

  /**
   * Dispatch an event 
   */
  void dispatchTextChangedEvent()
  {
    //TextChangedEvent event = new TextChangedEvent();
    //event.text = inputText;
    //textForm.dispatchEvent( event );
  }
}