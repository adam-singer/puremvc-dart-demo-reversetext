class PrepareControllerCommand extends MVCSimpleCommand
{
  void execute( INotification note ) 
  {
    facade.registerCommand( AppConstants.PROCESS, () => new ProcessTextCommand() );
  }
}