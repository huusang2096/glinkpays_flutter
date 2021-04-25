part of 'tab_cubit.dart';

class TabState {
  int currentTab;
  TabState(this.currentTab);
}

class TabInitial extends TabState {
  TabInitial() : super(0);
}

class ChangeTabState extends TabState {
  ChangeTabState(int currentTab) : super(currentTab);
}
