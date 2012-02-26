/**
 * A concrete Facade for the application.
 */
class ApplicationFacade extends MVCFacade
{
  ApplicationFacade( multitonKey ):super( multitonKey ){}
  
  static IFacade getInstance( String multitonKey )
  {
    if ( instanceMap[ multitonKey ] == null ) {
      instanceMap[ multitonKey ] = new ApplicationFacade( multitonKey );
    }
    return instanceMap[ multitonKey ];
  }
  
  void startup(){
    facade.registerCommand( AppConstants.STARTUP, () => new StartupCommand() );

  }
}