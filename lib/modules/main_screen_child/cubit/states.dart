abstract class ChildStates {}

class ChildInitialState extends ChildStates{}

class ChildChangeState extends ChildStates{}

class ChildLimitState extends ChildStates{

  final double limit;

  ChildLimitState(this.limit);

}
