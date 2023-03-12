class RabbleBaseState {
  final bool initializing;
  final bool primaryBusy;
  final bool secondaryBusy;
  final bool tertiaryBusy;
  final bool idle;
  final bool error;
  final bool empty;
  final dynamic data;

  RabbleBaseState({
    bool initializing = false,
    bool busy = false,
    bool idle = false,
    bool error = false,
    bool empty = false,
    bool secondaryBusy = false,
    bool tertiaryBusy = false,
    dynamic data = dynamic,
  })  : this.initializing = initializing,
        this.primaryBusy = busy,
        this.idle = idle,
        this.error = error,
        this.empty = empty,
        this.secondaryBusy = secondaryBusy,
        this.tertiaryBusy = tertiaryBusy,
        this.data = data;

  RabbleBaseState.initializing() : this(initializing: true);

  RabbleBaseState.primaryBusy() : this(busy: true);

  RabbleBaseState.idle() : this(idle: true);

  RabbleBaseState.error() : this(error: true);

  RabbleBaseState.empty() : this(empty: true);

  RabbleBaseState.secondaryBusy() : this(secondaryBusy: true);

  RabbleBaseState.tertiaryBusy() : this(tertiaryBusy: true);

  RabbleBaseState.response(data) : this(data: data);
}
