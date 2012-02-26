// DART DOM Library
//#import('dart:html');
#import('dart:dom');

// PureMVC Framework for Dart (must also be in your workspace!)
#import('../PureMVC_Dart/src/puremvc.dart');

// Model Tier
#source('src/model/proxy/TextProxy.dart');

// View Tier
#source('src/view/component/TextComponent.dart');
#source('src/view/mediator/TextComponentMediator.dart');
#source('src/view/event/TextChangedEvent.dart');


// Controller Tier
#source('src/controller/command/StartupCommand.dart');
#source('src/controller/command/PrepareModelCommand.dart');
#source('src/controller/command/PrepareControllerCommand.dart');
#source('src/controller/command/PrepareViewCommand.dart');
#source('src/controller/command/ProcessTextCommand.dart');
#source('src/controller/constant/AppConstants.dart');

void main()
{
  // Get a unique multiton Facade instance for the application 
  IFacade facade = MVCFacade.getInstance( AppConstants.APPNAME );
  
  // Startup the application's PureMVC core
  facade.registerCommand( AppConstants.STARTUP, () => new StartupCommand() );
  facade.sendNotification( AppConstants.STARTUP );

}