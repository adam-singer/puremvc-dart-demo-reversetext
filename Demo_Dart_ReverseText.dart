// DART HTML Library
#import('dart:html');

// PureMVC Framework for Dart (must also be in your workspace!)
#import('../PureMVC_Dart/src/puremvc.dart');

// Application Facade
#source('src/ApplicationFacade.dart');

// Model Tier
#source('src/model/proxy/TextProxy.dart');

// View Tier
#source('src/view/component/TextComponent.dart');
#source('src/view/mediator/TextComponentMediator.dart');

// Controller Tier
#source('src/controller/command/StartupCommand.dart');
#source('src/controller/command/PrepareModelCommand.dart');
#source('src/controller/command/PrepareControllerCommand.dart');
#source('src/controller/command/PrepareViewCommand.dart');
#source('src/controller/command/ProcessTextCommand.dart');
#source('src/controller/constant/AppConstants.dart');

void main()
{
  
}