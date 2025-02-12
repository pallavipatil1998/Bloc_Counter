abstract class CounterEvent{}


class incrementCountEvent extends CounterEvent{
   int value;
   incrementCountEvent({this.value=2});
}

class decrementCountEvent extends CounterEvent{

}