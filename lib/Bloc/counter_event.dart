abstract class CounterEvent{}


class incrementCountEvent extends CounterEvent{
   int value;
   incrementCountEvent({this.value=1});
}

class decrementCountEvent extends CounterEvent{

}