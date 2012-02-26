interface TextChangedEvent extends CustomEvent
{
  static final String TEXT_CHANGED = "text/changed";
  String text;
}